#!/bin/ruby

# Run with
# bundle exec --gemfile=Gemfile-bitly ruby ./csv-2-recurpost.rb

require 'csv'
require 'net/http'
require 'bitly'
require 'yaml'
require 'uri'

SMALL_TEST_SAMPLE = false

BITLY_DB_FILE_PATH = './urls_to_bitly.yaml'
wait_between_bitly_calls = 2

puts "Loading all csv"
posts = CSV.parse(File.read("./posts-to-tweets.csv"), headers: true, col_sep: ';')

puts "Filtering out posts with no tweet dates (I did not plan to publish them)"
posts = posts.filter { |post| not post["Last tweet date"].nil?}

puts "KEEPING ONLY A FEW POSTS TO TEST"
if (SMALL_TEST_SAMPLE)
  wait_between_bitly_calls = 0.1
  posts = posts[-5...]
end

print "Shortening urls and saving them in a yaml file for caching..."
bitly = Bitly::API::Client.new(token: File.read("./bitly.token"))

URLS_TO_BITLY = YAML.load_file(BITLY_DB_FILE_PATH)

posts.each do |post|
  post_url = post["Url"]
  next unless URLS_TO_BITLY[post_url].nil?

  bitly_url = bitly.shorten(long_url: post_url).link
  URLS_TO_BITLY[post_url] = bitly_url
  File.write(BITLY_DB_FILE_PATH, URLS_TO_BITLY.to_yaml)

  print '.'
  sleep wait_between_bitly_calls # because of bit.ly's rate limitation https://dev.bitly.com/v4_documentation.html
end
puts "Done"
puts

def expand_shortened_url(host, path)
  response = Net::HTTP.get_response(host, path)
  location = response['location']

  if location.start_with? "https://philippe.bourgau.net"
    location = location.gsub(/\/\?.*/,"/")
  end

  location
end

def each_tweet(posts)
  posts.map do |post|
    post_url = post["Url"]

    post.each do |column, text|
      next unless column =~ /^Nugget [0-9]+$/ and not text.nil?

      post[column] = yield text, post_url
    end

    print '.'
    post
  end
end

print "Replacing buff.ly urls with full urls..."
posts = each_tweet(posts) do |text, post_url|
  shortened_links = text.scan(/https?:\/\/buff\.ly\/[0-9A-z]+/)
  shortened_links.each do |shortened_link|
    uri = URI(shortened_link)
    link = expand_shortened_url(uri.host, uri.path)

    text = text.gsub(shortened_link, post_url)
  end
  text
end
puts "Done"
puts

print "Shortening post urls with bit.ly..."
posts = each_tweet(posts) do |text, post_url|
  short_url = URLS_TO_BITLY[post_url]
  text.gsub(post_url, short_url)
end
puts "Done"
puts

output = CSV.open("tweets2.csv", "w")

posts.each do |row|
  output << row
end

output.close
