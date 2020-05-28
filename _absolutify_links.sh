#!/bin/sh

export POST_FILE_PATH=$1

# Display usage if not called correctly
if [[ $# -ne 1 ]] ; then
    echo "Usage ./_absolutify_links.sh POST_FILE_PATH"
    exit 1
fi

echo "Adding current version to git"
git add $POST_FILE_PATH

echo "Prefixing image links with {{site.url}}"
sed -i '' 's:(\.\./imgs:({{site.url}}/imgs:g' $POST_FILE_PATH

echo "Prefixing site links with {{site.url}}"
sed -i '' 's:(/:({{site.url}}/:g' $POST_FILE_PATH
sed -i '' 's:(https\://philippe.bourgau.net/:({{site.url}}/:g' $POST_FILE_PATH

echo ''
git diff $POST_FILE_PATH
