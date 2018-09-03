#!/bin/sh

bundle exec jekyll clean
bundle exec jekyll serve --incremental  --port 5000 --unpublished --future "$@"
