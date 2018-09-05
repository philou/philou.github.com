#!/bin/sh

# Posts
cp -r ~/Code/philou.github.com/source/_posts ~/Code/jekyll-sandbox
find _posts -type f -name "*.markdown" | xargs sed -i '' 's/layout: post/layout: single/'
find _posts -type f -name "*.markdown" | xargs sed -i '' 's/{{site.url}}/{{site.url}}{{site.baseurl}}/'
find _posts -type f -name "*.markdown" | xargs sed -i '' 's:/blog/categories/\([^/\)]*\)/*:{{site.baseurl}}/categories/#\1:g'

# Images
cp -r ~/Code/philou.github.com/source/imgs ~/Code/jekyll-sandbox

# Categories
ls ~/Code/philou.github.com/_deploy/blog/categories/ | xargs -L1 ./_generate_redirect_to.sh
