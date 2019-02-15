#!/bin/sh

YELLOW="\033[33m"
NORMAL="\033[0;39m"

echo $YELLOW

echo "Checking for absolute links"
find _posts/ -type f -and -name "*.markdown" -and -exec grep -H "philippe.bourgau.net" {} \; | grep -v posterous_url | sort
find _posts/ -type f -and -name "*.markdown" -and -exec grep -H "127.0.0.1" {} \; | sort

echo
echo "Checking for links to email feed"
find _posts/ -type f -and -name "*.markdown" -and -exec grep -H "dxKE95" {} \; | sort

echo $NORMAL
