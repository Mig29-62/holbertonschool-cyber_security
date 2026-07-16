#!/usr/bin/python3
search_word='<AdministratorPassword>'
import xml.etree.ElementTree as ET
tree=ET.parse('Unattend.xml')
root=tree.getroot()
found=root.find(search_word)
print(found.text)
