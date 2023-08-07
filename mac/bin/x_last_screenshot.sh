#!/usr/bin/env bash

N=$1
last=$(ls -dltr  ~/Desktop/* |tail -n ${N}) 
IFS=$'\n'
let "i = 0"
for line in $last
do
    let "i = $i + 1"
    srcfname=$(echo $line |tr -s ' ' | cut -d ' ' -f 9-)
    extension="${srcfname##*.}"
    destfname="$i.$extension"
    echo "$srcfname ==> $destfname" 
    mv $srcfname $destfname
done

