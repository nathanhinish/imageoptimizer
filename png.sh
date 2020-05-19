#!/bin/bash

file="$1"

set -e

# pngquant --force --quality=70-80 --skip-if-larger --speed 1 "$file"
# rm -f "$(echo "$file" | sed -r 's/(.png)$/-fs8\1/i')"
optipng -o7 -strip all "$file"
