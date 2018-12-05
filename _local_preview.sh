#!/bin/sh

sed 's/gem "github-pages"/# gem "github-pages"/' < Gemfile > Gemfile.local
export BUNDLE_GEMFILE=Gemfile.local
./_serve.sh --config _config.yml,_config_local.yml

echo "If you get an error like 'Dependency Error... you'll need to install this gem' then running 'BUNDLE_GEMFILE=Gemfile.local bundle update' should do the trick. Check Readme.md for more info"
