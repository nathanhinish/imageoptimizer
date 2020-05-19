#!/bin/bash

file="$1"

set -e

temp_file=$(mktemp)

cjpeg -quality 90 -progressive -optimize "$file" > "$temp_file"

cp -f "$temp_file" "$file"

rm -f "$temp_file"

