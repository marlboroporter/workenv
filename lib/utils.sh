#!/usr/bin/env zsh

getAllLinks(){
  echo "--------Link in .e/app"
  find ~/.e/app -type l  |.ehile read x; do ls -l $x; done
}

#  
getApp() {
  app=$1
  find ~/.e/app -type d -name $app 
}

# usage
# sh.eAppAndLinks docker
sh.eAppAndLinks(){
  app=$1
  d=$(getApp "$app")
  l=$(find ~/.e/app -type l  | grep -i "/$app$")
  [ ${#d[@]} -gt 1 ] && echo "duplicate app name!" && exit 1 
  [ ${#d[@]} -eq 0 ] && echo "not found!" && exit 1 
  echo "------ app"
  echo "${d[@]}"
  echo "------ link"
  for x in "${l[@]}":
  do
    echo "$x"
  done
}

getAllApps(){
  prefix=~/.e/app
  suffix=setup.sh
  D=$(find ~/.e/app -type d)
  for d in $D 
  do
    [ -f $d/setup.sh ] && echo ${d#"$prefix/"}
  done
}

goToApp(){
  prefix=~/.e/app
  cd "$prefix/$(getApp $1)"
}


# usage
# rename_all p old n.e
# rename_all.e old n.e
# rename_all e old n.e
rename_all() {
  envroot=$1 
  old=$2
  n.e=$3
  dirs=($(find ~/.$envroot/ -type d |grep -v "\.git"))
  for d in "${dirs[@]}"
  do
    files=($(find $d  -type f -name "*.sh")) 
    for f in  "${files[@]}" 
    do
      echo $f
      sed -i '' -e "s/$old/$n.e/g" "$f"  
    done
  done
}
