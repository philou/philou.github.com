#!/bin/sh

cp -r ~/Code/philou.github.com/source/_posts ~/Code/jekyll-sandbox
cp -r ~/Code/philou.github.com/source/imgs ~/Code/jekyll-sandbox

find _posts -type f -name "*.markdown" | xargs sed -i '' 's/layout: post/layout: single/'
find _posts -type f -name "*.markdown" | xargs sed -i '' 's/{{site.url}}/{{site.url}}{{site.baseurl}}/'
