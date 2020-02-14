#!/bin/sh

export POST_NAME=$1
export PUBLISH_DATE=$2

if [[ $# -ne 2 ]] ; then
    echo "Usage ./_new_post.sh POST_NAME PUBLISH_DATE_YYYY-MM-DD"
    exit 1
fi

# TODO
# print a kind of log


export POST_FILE_PATH=`bundle exec jekyll post $POST_NAME --extension "markdown" | grep "New post created" | grep --only-matching -e "_posts/.*\.markdown"`
echo $POST_FILE_PATH

export POST_FILE_NAME=`echo $POST_FILE_PATH | sed 's:^.*_posts/\(.*\)\.markdown.*$:\1:'`
echo $POST_FILE_NAME

mkdir imgs/$POST_FILE_NAME
sed -i '' 's/<POST_FILE_NAME>/'$POST_FILE_NAME'/' $POST_FILE_PATH
sed -i '' 's/date:.*/date: '$PUBLISH_DATE'/' $POST_FILE_PATH
