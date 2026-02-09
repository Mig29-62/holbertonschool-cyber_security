#!/bin/bash
find -type f -empty "$1" -size 0 -exec ls -l {} \
