#!/bin/bash

cd /mnt

MAXPROC="$(cat /proc/cpuinfo | awk '/^processor/{print $3}' | wc -l)"

find . \( -type f -iname '*.png' \) -print0 | xargs -0 -n 1 -P $MAXPROC /png.sh

find . \( -type f -iname '*.jpg' -o -iname '*.jpeg' \) -print0 | xargs -0 -n 1 -P $MAXPROC /jpg.sh

