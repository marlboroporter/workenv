#!/usr/bin/env bash
input=$(basename $1)

root=${input/.md/}
echo $root
pandoc --reference-doc etc/style.docx -o $root.docx $1 
pandoc --reference-doc etc/style.docx -s  -o $root.1.docx $1 

