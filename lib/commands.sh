#!/usr/bin/env zsh
. ~/.e/etc/env.sh
unalias g
alias g='go_app_default_in_e'

# params: appname, eroot
go_app_default_in_e() {
  app=$1
  eroot=$2
  if [[ "$eroot" == "" ]]; then
    eroot="e"
  fi
  declare -A apppath 
  
  # find unique dir path in each eroot 
  for k v in ${(kv)EROOT} 
  do
    DIRS=($([[ -d ~/$v/app ]] && find ~/$v/app -type d -name $app))
    count=${#DIRS[@]} 
    #echo "$DIRS[@] : $count"
    if [[ $(($count)) -gt 1 ]]; then
      echo "$k: $count ducplicates: "
      for d in "${DIRS[@]}"; do
        echo "   $d"
      done

    elif [[ $(($count)) -lt 1 ]]; then
      echo "$k: None" 
    elif [[ $(($count)) -eq 1 ]]; then
      echo "$k: ${DIRS[@]}" 
      apppath[$k]=${DIRS[1]} 
    fi  
  done
  #
  if [[ -d "$apppath[$eroot]" ]]; then
    cd $apppath[$eroot]
  fi
  
}


