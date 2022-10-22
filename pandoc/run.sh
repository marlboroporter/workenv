#!/usr/bin/env bash
input=$(basename $1)

root=${input/.md/}
echo $root
pandoc --reference-doc etc/style.docx -s -o $root.docx $1 

