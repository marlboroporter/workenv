#! /usr/bin/env bash 
usage(){ 
echo "Usage: $(basename $0) [func=[info | install | setenv | config | pkgmgr ] [dir=.] 
  - use within ~/.w/app
"
exit 1 
}
[[ ! $PWD =~ "$HOME/.w/app" ]]  && usage 
#
FUNC=${1:-info}

# for all individual app
if [[ "$2" == "" ]]; then
    DIR=$PWD
else
    DIR=$HOME/.w/app/$2
fi
( 
    cd $DIR  
    source ~/.w/app/lib/basesetup.sh  
    [[ -f ./setup.sh ]] && source ./setup.sh 
    #echo "$wapp $pkgmgr"
    #eval "$FUNC" 
    case $FUNC in 
        install) 
            ;& 
        uninstall) 
            ;&
        reinstall) 
            ;&
        config) 
            ;& 
        info)  
            ;&
        pkgmgr)  
            f="call_$FUNC"
            $f
            ;;  
        *) 
            winfo "$FUNC"
            $FUNC    
            ;;  
    esac
)
