#!/bin/bash

set -e

jpegoptim --all-progressive --strip-all "$1"

