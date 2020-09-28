#!/bin/sh

export ME=`basename "$0"`
export POST_FILE_PATH=$1

# Display usage if not called correctly
if [[ $# -ne 1 ]] ; then
    echo "Usage ./$ME POST_FILE_PATH"
    exit 1
fi



egrep --only-matching "(^\s*(\*|[1-9]\.)\s*)?\*\*([^\*]|\*[^\*])*\*\*" $POST_FILE_PATH | sed 's/\*\*//g'
