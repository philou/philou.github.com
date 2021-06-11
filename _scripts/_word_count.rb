#!/usr/bin/env ruby

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

  sections = full_text.split(/^---\s*$/)
  sections.delete("")
  raise StandardError.new "Failed to correctly extract YAML and Markdown" unless sections.size == 2

  front_matter = sections[0]
  markdown = sections[1]

  title = YAML.load(front_matter)["title"]

  File.write("tmp/post.markdown", markdown)

  count, status = Open3.capture2("python3 markdown-word-count/mwc.py tmp/post.markdown")

  puts "#{title};#{count}"

rescue StandardError => e
  STDERR.puts "-- ERROR: Could not process #{post_path}"
  STDERR.puts e.message
  STDERR.puts e.backtrace.inspect
end
