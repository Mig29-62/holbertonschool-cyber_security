--TASK 0--
ldapsearch -x -H ldap://192.168.56.20 \
  -b "OU=LDAP-Project,DC=pentestlab,DC=local" \
  "(objectClass=user)" '*' '+'
--TASK 3--
weird thing is you can easily see Flag 3 from the last query:))
