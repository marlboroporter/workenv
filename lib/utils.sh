
getAllLinks(){
  echo "--------Link in .w/app"
  find ~/.w/app -type l  | while read x; do ls -l $x; done
}

#  
getApp() {
  app=$1
  find ~/.w/app -type d -name $app 
}

# usage
# showAppAndLinks docker
showAppAndLinks(){
  app=$1
  d=$(getApp "$app")
  l=$(find ~/.w/app -type l  | grep -i "/$app$")
  [ ${#d[@]} -gt 1 ] && echo "duplicate app name!" && exit 1 
  [ ${#d[@]} -eq 0 ] && echo "not found!" && exit 1 
  echo "------ app"
  echo "${d[@]}"
  echo "------ link"
  for x in "${l[@]}":
  do
    echo "$x"
  done

#  a=(
#  "dir --> "
#  "${d[@]}"
#  "link --> "
#  "${l[@]}"
#  ) 
#  echo "${a[@]}"
}

getAllApps(){
  prefix=~/.w/app
  suffix=setup.sh
  D=$(find ~/.w/app -type d)
  for d in $D 
  do
    [ -f $d/setup.sh ] && echo ${d#"$prefix/"}
  done
}

goToApp(){
  prefix=~/.w/app
  cd "$prefix/$(getApp $1)"
}

#echo "$(getAppAndLinks $1)"
#getApp $1
#getAppAndLinks $1
#getAllApps



#find ~/.w/app -type l  | while read x; do ls -l $x; done
