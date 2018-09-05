#!/bin/sh

sed 's/gem "github-pages"/# gem "github-pages"/' < Gemfile > Gemfile.local
export BUNDLE_GEMFILE=Gemfile.local
./_serve.sh --config _config.yml,_config_local.yml
