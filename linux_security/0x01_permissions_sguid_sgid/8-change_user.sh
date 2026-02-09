#!/bin/bash
find -type f exec if [$(stat -c "%U" {})==user2] ; then sudo chown  user3 {} ; fi  "$1"
