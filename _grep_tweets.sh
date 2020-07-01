#!/bin/sh

egrep --only-matching "(^\s*(\*|[1-9]\.)\s*)?\*\*([^\*]|\*[^\*])*\*\*" $1 | sed 's/\*\*//g'
