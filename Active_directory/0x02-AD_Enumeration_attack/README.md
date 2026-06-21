TASK 0
ldapsearch -x -H ldap://192.168.56.20 -D 'legacy@PENTESTLAB.LOCAL' -w 'Password123' -b 'DC=PENTESTLAB,DC=LOCAL' '(sAMAccountName=legacy)' '*' '+'
