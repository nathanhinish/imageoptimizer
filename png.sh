#!/bin/bash

file="$1"

set -e

pngquant --force --quality=70-80 --skip-if-larger --speed 1 "$file"
optipng -o7 "$file"
