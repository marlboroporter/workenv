#!/usr/bin/env zsh
. ~/.e/etc/env.sh


unalias g
alias g='bt_go_app_default_in_e'
alias ereplace='bt_rename_all'


# params: appname, eroot
bt_go_app_default_in_e() {
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

bt_get_AllLinks(){
  echo "--------Link in .e/app"
  find ~/.e/app -type l  |while read x; do ls -l $x; done
}

bt_get_all_apps(){
  prefix=~/.e/app
  suffix=setup.sh
  D=$(find ~/.e/app -type d)
  for d in $D 
  do
    [ -f $d/setup.sh ] && echo ${d#"$prefix/"}
  done
}

bt_go_to_app(){
  prefix=~/.e/app
  cd "$prefix/$(getApp $1)"
}


# usage
# rename_all p old new
# rename_all w old new
# rename_all e old new
bt_rename_all() {
  envroot=$1 
  old=$2
  new=$3
  dirs=($(find ~/.$envroot/ -type d |grep -v "\.git"))
  for d in "${dirs[@]}"
  do
    files=($(find $d  -type f -name "*.sh")) 
    for f in  "${files[@]}" 
    do
      echo $f
      sed -i '' -e "s/$old/$new/g" "$f"  
    done
  done
}
