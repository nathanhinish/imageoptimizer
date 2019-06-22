#!/bin/bash

file="$1"

set -e

cjpeg -quality 72 -optimize "$file"

