#!/bin/sh

echo "Prefixing image links with {{site.url}}"
find _posts/ -type f -and -name "*.markdown" -and -exec sed -i '' 's:(\.\./imgs:({{site.url}}/imgs:g' {} \;

echo "Prefixing site links with {{site.url}}"
find _posts/ -type f -and -name "*.markdown" -and -exec sed -i '' 's:(/:({{site.url}}/:g' {} \;
