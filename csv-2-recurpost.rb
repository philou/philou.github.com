#!/bin/ruby

# Run with
# bundle exec --gemfile=Gemfile-bitly ruby ./csv-2-recurpost.rb

require 'csv'
require 'net/http'
require 'bitly'
require 'yaml'
require 'uri'

BITLY_DB_FILE_PATH = './urls_to_bitly.yaml'
wait_between_bitly_calls = 5

# load all csv
posts = CSV.parse(File.read("./posts-to-tweets.csv"), headers: true, col_sep: ';')

# filter out posts with no tweet dates (I did not plan to publish them)
posts = posts.filter { |post| not post["Last tweet date"].nil?}

# keep only a few posts to test
wait_between_bitly_calls = 0.1
posts = posts[-5...]

# Shorten urls and save them in a yaml file for caching
puts "Shortening urls..."
bitly = Bitly::API::Client.new(token: File.read("./bitly.token")

urls_to_bitly = YAML.load_file(BITLY_DB_FILE_PATH)

posts.each do |post|
  post_url = post["Url"]
  next unless urls_to_bitly[post_url].nil?

  bitly_url = bitly.shorten(long_url: post_url).link
  urls_to_bitly[post_url] = bitly_url
  File.write(BITLY_DB_FILE_PATH, urls_to_bitly.to_yaml)

  print '.'
  sleep wait_between_bitly_calls # because of bit.ly's rate limitation https://dev.bitly.com/v4_documentation.html
end
puts
puts

def expand(host, path)
  response = Net::HTTP.get_response(host, path)
  location = response['location']

  if location.start_with? "https://philippe.bourgau.net"
    location = location.gsub(/\/\?.*/,"/")
  end

  location
end

# Replacing buff.ly urls with bit.ly
posts = posts.map do |post|
  post_url = post["Url"]
  short_post_url = urls_to_bitly[post_url]

  post.each do |column, text|
    next unless column =~ /^Nugget [0-9]+$/ and not text.nil?

    shortened_links = text.scan(/https?:\/\/buff\.ly\/[0-9A-z]+/)
    shortened_links.each do |shortened_link|
      uri = URI(shortened_link)
      link = expand(uri.host, uri.path)

      if link == post_url
        text = text.gsub(shortened_link, short_post_url)
      end
    end

    post[column] = text
  end

  print '.'
  post
end
puts
puts

pp posts
