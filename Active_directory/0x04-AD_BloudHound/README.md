--TASK 0--
bloodhound-python -u bh_intern -p User@2025!  -d PENTESTLAB.LOCAL -c all -v -ns 192.168.56.20
used that command to pull info using bloodhound-python then uploaded in json format to bloodhound
ldapsearch -x -H ldap://192.168.56.20 -D 'BH_INTERN@PENTESTLAB.LOCAL' -w 'User@2025!' -b 'DC=PENTESTLAB,DC=LOCAL' '(sAMAccountName=BH_INTERN)' '*' '+'
then used that command to pull all attributes of user BH_INTERN

