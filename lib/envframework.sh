#! /usr/bin/env zsh
setup_one_usage(){ 
echo "setup_usage: $(basename $0) [func=[info | install | setenv | config | pkgmgr ] [dir=.] 
  - use within [.p|.w]/app
"
exit 1 
}

get_envroot(){
    if [[ "$1" =~ "^${HOME}/.w" ]]
    then
        r="$HOME/.w"     
    elif [[ "$1" =~ "^${HOME}/.p" ]]
    then
        r="$HOME/.p"      
    else 
        setup_one_usage 
    fi
    echo "$r"
}

setup_one() {
    #echo "[[ ! \"$PWD\" =~ \"$ENVROOT/app\" ]]  && setup_one_usage "
    [[ ! "$PWD" =~ "$ENVROOT/app" ]]  && setup_one_usage 
    #
    FUNC=${1:-info}

    # for all individual app
    if [[ "$2" == "" ]]; then
        DIR=$PWD
    else
        DIR=$ENVROOT/app/$2
    fi
    ( 
        cd $DIR  
        source ~/.w/lib/setup_one_app_funcs_base.sh  # point to .w only 
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
}


