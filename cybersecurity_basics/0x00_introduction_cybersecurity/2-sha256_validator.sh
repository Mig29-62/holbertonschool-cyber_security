#!/usr/bin/bash
sha256sum "$1" > check.txt;sha256sum -c check.txt
