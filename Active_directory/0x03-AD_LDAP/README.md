--TASK 0--
ldapsearch -x -H ldap://192.168.56.20 \
  -b "OU=LDAP-Project,DC=pentestlab,DC=local" \
  "(objectClass=user)" '*' '+'

