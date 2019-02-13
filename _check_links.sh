#!/bin/sh

YELLOW="\033[33m"
NORMAL="\033[0;39m"

echo $YELLOW

echo "Checking for links to philippe.bourgau.net"
find _posts/ -type f -and -name "*.markdown" -and -exec grep -H "philippe.bourgau.net" {} \; | grep -v posterous_url

echo
echo "Checking for links to email feed"
find _posts/ -type f -and -name "*.markdown" -and -exec grep -H "dxKE95" {} \; | sort

echo $NORMAL
