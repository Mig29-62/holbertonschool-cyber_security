#!/bin/bash
find -type f "$1" -size 0 -exec ls -l {} \
