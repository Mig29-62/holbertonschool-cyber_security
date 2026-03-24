#!/bin/bash
result=$(snmpget -v 2c -c public "$1" 1.3.6.1.2.1.1.1.0 2>/dev/null)
 echo "$result"
