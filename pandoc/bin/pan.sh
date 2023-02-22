#!/usr/bin/env zsh 

################# To double check when need this ###############
pan(){
  input=$1 
  mkdir -p out
  file=$(basename $input)
  root=${file/.md/}
  pandoc --reference-doc $EROOT[e]/pandoc/etc/style.docx -s -o out/$root.docx $input 
}

# yamlfile parser 
#   this yaml file is in the format of like a java property  
# global vars:
#   - data:  associative array to be declared globally by caller 
declare -A data  
# params:
#   yamlfile
get_data(){
  ymlf=$1
  cat $ymlf | \
  while read line;
  do 
    dic=("${(@s/:/)line}")
    xenv_log  "$dic[1] --> $dic[2]" 
    data+=(["$dic[1]"]="$dic[2]")
  done     
  for k in ${(k)data} 
  do
    xenv_log "$k ==> $data[$k]"
  done
}

# 
prepan(){
  #declare -A data # here or outside func 
  get_data $2
  xenv_log  "$data[@]"
  for key value in ${(kv)data}
  do
     #find . -type f |xargs sed -i '' -e 's/workenv/w/g'
    sed -i '' -e 's:'"${key}"':'"${value}"':g' $1    
  done
}


