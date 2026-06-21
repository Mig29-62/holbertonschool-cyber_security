--TASK 0--
ldapsearch -x -H ldap://192.168.56.20 \
  -b "OU=LDAP-Project,DC=pentestlab,DC=local" \
  "(objectClass=user)" '*' '+'
--TASK 1,2,3,4--
EVERY OTHER FLAG IS CONTAINED INSIDE THE RESULT OF THE PREVIOUS QUERY :)))
