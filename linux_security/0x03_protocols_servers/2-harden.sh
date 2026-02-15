#!/bin/bash
find / -xdev -type d -exec chmod o-w {} +  -perm -0002 
