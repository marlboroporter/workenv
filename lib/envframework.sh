get_env(){
    envroot=$1 
    if [[ "$envroot" =~ ".w" ]]; then 
        echo "w"
    elif [[ "$envroot" =~ ".p" ]]; then 
        echo "p" 
    fi
}

get_envroot(){
    if [[ "$1" =~ "^${HOME}/.w" ]]
    then
        r="$HOME/.w"     
    elif [[ "$1" =~ "^${HOME}/.p" ]]
    then
        r="$HOME/.p"      
    else 
        usage 
    fi
    echo "$r"
}

setup_one() {
    [[ ! "$PWD" =~ "$ENVROOT/app" ]]  && usage 
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

setup_all(){
(
    source ~/.w/lib/setup_all_apps_funcs.sh
    case $1 in
        install)
            install ;;
        uninstall)
            uninstall ;;
        reinstall)
            reinstall ;;
        config)
            config ;;
        setenv)
            setenv ;;
        info)
            info ;;
        pkgmgr)
            pkgmgr ;;
         *)
            echo "not supported op!"
            usage
            ;;
    esac
)
}


usage(){ 
echo "Usage: setup [-a |--all] [info | install | uninstall| reinstall|  setenv | config |pkgmgr ]
  *  cd ~/[.p|.w]/app/*/; setup action
  *  cd ~/[.p|.w]; setup -a action
"
exit 1 
}

export ENVROOT=$(get_envroot "$PWD")
export WENV=$(get_env $ENVROOT)
export WRC=~/."${WENV}envrc"


