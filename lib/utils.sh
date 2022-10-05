#! /usr/bin/env zsh
usage(){ 
echo "Usage: setup [-a |--all] [info | install | uninstall| reinstall|  setenv | config |pkgmgr ]
  *  cd ~/[.p|.e]/app/*/; setup action
  *  cd ~/[.p|.e]; setup -a action
"
exit 1 
}


