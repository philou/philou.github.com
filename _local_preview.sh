#!/bin/sh

sed 's/gem "github-pages"/# gem "github-pages"/' < Gemfile > Gemfile.local
export BUNDLE_GEMFILE=Gemfile.local
./_preview.sh --config _config.yml,_config_local.yml
