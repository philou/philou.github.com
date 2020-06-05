#!/bin/ruby

require 'yaml'
require 'open3'

if ARGV.empty?
  puts "Prints <post title>;<word count> for a Jekyll post"
  puts "Usage: ruby _word_count.rb <Jekyll-Post-Path>"
  exit 1
end

begin
  post_path = ARGV[0]

  full_text = File.read(post_path)

  sections = full_text.split("---")
  front_matter = sections[1]
  markdown = sections[2]

  title = YAML.load(front_matter)["title"]

  File.write("tmp/post.markdown", markdown)

  count, status = Open3.capture2("python3 markdown-word-count/mwc.py tmp/post.markdown")

  puts "#{title};#{count}"

rescue StandardError => e
  STDERR.puts "Could not process #{post_path}"
  STDERR.puts e.message
  STDERR.puts e.backtrace.inspect
end
