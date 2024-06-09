#!/bin/sh

set -ex

cd /portrait/portrait-app

yarn install

exec "$@"