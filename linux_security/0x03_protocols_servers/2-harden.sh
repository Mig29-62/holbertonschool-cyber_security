#!/bin/bash
find / -xdev -type d -exec chmod 755 {} +  -perm -0002 
