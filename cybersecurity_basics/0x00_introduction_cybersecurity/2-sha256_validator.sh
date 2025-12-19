#!/usr/bin/bash
var=$(sha256sum  -c $2) | echo $var
