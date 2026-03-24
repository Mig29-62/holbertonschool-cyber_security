#!/bin/bash
grep -E "public" /etc/snmp/snmpd.conf | grep -v "^#"
