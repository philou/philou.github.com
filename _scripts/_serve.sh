#!/bin/sh

BASEDIR=$(dirname "$0")

"$BASEDIR"/_check_fixmes.sh
"$BASEDIR"/_check_links.sh

bundle exec jekyll clean
bundle exec jekyll serve --incremental  --port 5000 --unpublished --future --safe "$@"
