# encoding: utf-8

require 'rubygems'
require 'jekyll'
require 'fileutils'
require 'net/http'
require 'uri'
require "json"
require 'mini_magick'

# ruby -r './lib/jekyll/migrators/posterous.rb' -e 'Jekyll::Posterous.process(email, pass, api_key, blog)'

module Jekyll
  module Posterous
    def self.fetch(uri_str, limit = 10)
      # You should choose better exception.
      raise ArgumentError, 'Stuck in a redirect loop. Please double check your email and password' if limit == 0

      response = nil
      Net::HTTP.start('posterous.com') do |http|
        req = Net::HTTP::Get.new(uri_str)
        req.basic_auth @email, @pass
        response = http.request(req)
      end

      case response
      when Net::HTTPSuccess     then response
      when Net::HTTPRedirection then fetch(response['location'], limit - 1)
      when Net::HTTPForbidden   then
        retry_after = response.to_hash['retry-after'][0]
        puts "We have been told to try again after #{retry_after} seconds"
        sleep(retry_after.to_i + 1)
        fetch(uri_str, limit - 1)
      else response.error!
      end
    end

    def self.resize_and_crop(image, size)
      image.resize("#{size}x#{size}")
      image.format "png"
      return image
    end

    def self.resize_and_crop(img, size)
      img_w = img[:width].to_f
      img_h = img[:height].to_f

      #scale image to correct size
      w_ratio =  size / img_w
      h_ratio =  size / img_h
      scale = 1

      if (img_h > size && img_w > size)
        scale = h_ratio > w_ratio ? h_ratio : w_ratio
      else
        scale = h_ratio < w_ratio ? h_ratio : w_ratio
      end

      img.scale "#{scale * 100}%"
      img_w = img[:width].to_f
      img_h = img[:height].to_f
      y_shift = ((img_h - size) / 2).abs
      x_shift = ((img_w - size) / 2).abs

      img.crop "#{size}x#{size}+#{x_shift}+#{y_shift}"
      img
    end

    def self.fetch_images(directory, imgs)
      def self.fetch_one(url, limit = 10)
        raise ArgumentError, 'HTTP redirect too deep' if limit == 0
        response = Net::HTTP.get_response(URI.parse(url))
        case response
        when Net::HTTPSuccess     then response.body
        when Net::HTTPRedirection then self.fetch_one(response['location'], limit - 1)
        else
          response.error!
        end
      end

      FileUtils.mkdir_p "source/" + directory
      urls = Array.new
      imgs.each do |img|
        fullurl = img["full"]["url"]
        uri = URI.parse(fullurl)
        imgname = uri.path.split("/")[-1]
        imgdata = self.fetch_one(fullurl)
        open(directory + "/" + imgname, "wb") do |file|
          file.write imgdata
        end

        size = 128
        full_file_path = directory + "/" + imgname
        thumb_file_path = full_file_path + ".thumb.#{size}.png"
        full_image = MiniMagick::Image.open(full_file_path)
        thumb_image = self.resize_and_crop(full_image, size)
        thumb_image.format "png"

        success = thumb_image.write thumb_file_path
        raise if !success

        urls.push([ full_file_path, thumb_file_path ])

      end

      return urls
    end

    def self.process(email, pass, api_token, blog = 'primary', tags_key = 'categories', base_path = '')
      @email, @pass, @api_token = email, pass, api_token
      FileUtils.mkdir_p "_posts"

      posts = JSON.parse(self.fetch("/api/2/sites/#{blog}/posts?api_token=#{@api_token}").body)
      page = 1

      while posts.any?
        posts.each do |post|
          title = post["title"]
          posterous_slug = post["slug"]
          slug = posterous_slug[0..44]
          date = Date.parse(post["display_date"])
          content = post["body_html"]
          published = !post["is_private"]
          basename = "%02d-%02d-%02d-%s" % [date.year, date.month, date.day, slug]
          name = basename + '.html'

          # Images:
          post_imgs = post["media"]["images"]
          if post_imgs.any?

            img_dir = "imgs/" + basename
            sections = {}

            post_imgs.each do |post_img|
              media_id = post_img["media_id"]
              images = sections[media_id]
              images ||= []
              img_urls = self.fetch_images(img_dir, [post_img])
              images += img_urls
              sections[media_id] = images
            end

            sections.each do |k,v|
              img_urls = v
              if img_urls.any?

                if img_urls.count == 1
                  full = img_urls.first.first
                  thumb = img_urls.first.last
                  imgcontent = '<p><img src="' + base_path + full + '"></p>'
                else
                  img_urls.map!{|img_url| "#{img_url.first}[#{img_url.last}]" }
                  imgcontent = "{% gallery %}\n" + img_urls.join("\n") + "\n{% endgallery %}\n"
                end
                # filter out "posterous-content", replacing with photo or gallery tags:
                old_content = content
                content = content.sub(/\<p.*\>\[\[posterous-content:#{k}\]\]\<\/p\>/, imgcontent)
                content = content.sub(/\[\[posterous-content:#{k}\]\]/, imgcontent) if content == old_content
                raise if content == old_content
              end

            end
          end

          tags = []
          post["tags"].each do |tag|
            tags.push(tag["name"])
          end

          # Get the relevant fields as a hash, delete empty fields and convert
          # to YAML for the header
          data = {
             'layout' => 'post',
             'title' => title.to_s,
             'published' => published,
             'date' => date,
             tags_key => tags,
             'posterous_url' => post["full_url"],
             'posterous_slug' => posterous_slug
           }.delete_if { |k,v| v.nil? || v == ''}.to_yaml

          # Write out the data and content to file
          File.open("source/_posts/#{name.gsub(".html", ".markdown")}", "w") do |f|
            puts name
            f.puts data
            f.puts "---"
            f.puts content
          end
        end

        page += 1
        posts = JSON.parse(self.fetch("/api/2/sites/#{blog}/posts?api_token=#{@api_token}&page=#{page}").body)
      end
    end
  end
end




