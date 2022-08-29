get_env(){
    envroot=$1 
    if [[ "$envroot" =~ ".w" ]]; then 
        echo "w"
    elif [[ "$envroot" =~ ".p" ]]; then 
        echo "p" 
    fi
}
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

export ENVROOT=$(get_envroot "$PWD")
export WENV=$(get_env $ENVROOT)
export WRC=~/."${WENV}envrc"



