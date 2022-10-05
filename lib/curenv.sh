#! /usr/bin/env zsh
get_env(){
    envroot=$1 
    if [[ "$envroot" =~ ".e" ]]; then 
        echo .e"
    elif [[ "$envroot" =~ ".p" ]]; then 
        echo "p" 
    elif [[ "$envroot" =~ ".e" ]]; then 
        echo "e" 
     fi
}

get_envroot(){
    if [[ "$1" =~ "^${HOME}/.e" ]]; then
        r="$HOME/.e"     
    elif [[ "$1" =~ "^${HOME}/.p" ]]; then
        r="$HOME/.p"      
    elif [[ "$1" =~ "^${HOME}/.e" ]]; then
        r="$HOME/.e"          
    else 
        usage 
    fi
    echo "$r"
}

export CENVROOT=$(get_envroot "$PWD")
export CENV=$(get_env $CENVROOT)
export CRC=~/."${CENV}envrc"


