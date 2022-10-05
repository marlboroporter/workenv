#! /usr/bin/env zsh
# setup_one func docker.ehichroot   
setup_one() {
    root=$3
    [[ ! "$PWD" =~ "$root/app" ]]  && usage 
    FUNC=${1:-info}
    # for all individual app
    if [[ "$2" == "" ]]; then
        DIR=$PWD
    else
        DIR=$root/app/$2
    fi
    ( 
        cd $DIR  
        source ~/.e/lib/single_app.sh  # point to .e only 
        [[ -f ./setup.sh ]] && source ./setup.sh 
        zsh_call_check_defined "$FUNC"
    )
}

#setup_all docker e 
setup_all(){
  (
    source ~/.e/lib/all_app.sh
    FUNC=$1
    root=$2 
    if typeset -f  $FUNC > /dev/null; then
      $FUNC $root
    else
      echo " op not supported !"
      usage
    fi
  )
}


usage(){ 
echo "Usage: setup [-a |--all] [info | install | uninstall| reinstall|  setenv | config |pkgmgr ]
  *  cd ~/[.p|.e]/app/*/; setup action
  *  cd ~/[.p|.e]; setup -a action
"
exit 1 
}


