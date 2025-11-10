#!/usr/bin/env bash

N=${1:-1}
DOWNLOAD_DIR=~/Downloads
last=$(ls -dltr  ${DOWNLOAD_DIR}/* |tail -n ${N}) 
#mac screenshot file name already named this way
#batch=$(date +%Y-%m-%d_%H%M%S)
IFS=$'\n'
let "i = 0"
for line in $last
do
    let "i = $i + 1"
    srcfname=$(echo $line |tr -s ' ' | cut -d ' ' -f 9-)
    extension="${srcfname##*.}"
    #destfname="${batch}"_"$i"."$extension"
    destfname=${srcfname##${DOWNLOAD_DIR}/}
    destfname=$(echo "${destfname}" |sed -r 's/[ ]+/_/g')
    echo "$srcfname ==> $destfname" 
    mv $srcfname $destfname
done

