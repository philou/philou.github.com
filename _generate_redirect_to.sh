#!/bin/sh

CATEGORY="$1"

sed 's/:CATEGORY:/'"$CATEGORY"'/g' _redirect_to.md > ~/Code/jekyll-sandbox/blog/categories/$CATEGORY.md
