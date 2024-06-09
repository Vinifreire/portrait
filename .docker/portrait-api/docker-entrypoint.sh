#!/bin/bash

set -ex

cd /portrait/portrait-api

unset BUNDLE_APP_CONFIG
bundle config set path '/gems'
bundle install

exec "$@"