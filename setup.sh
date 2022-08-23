#!/usr/bin/env bash 

PROC="cat"

+(){ echo "
#------> $@ -------
" 
}

+.(){ 
    c="brew install $@"
    + "$c"
    case "$PROC" in
        source)  eval "$c" ;;
        cat) echo "$c"  ;;
        *) echo "not supported $PROC" ;;
    esac
}

upd(){
    c=$(echo "
    cp  ~/.zshrc ~/.zshrc.$(date +%Y%m%d.%H%M%S)  
    echo \". ~/.workenv/profile/zshrc\" > ~/.zshrc
    ") 
    case "$PROC" in
        source)  eval "$c" ;;
        cat) echo "$c"  ;;
        *) echo "not supported $PROC" ;;
    esac
}

++() { 
    + "$@"
    case "$PROC" in
        source) source  "$@" ;;
        cat) cat "$@"  ;;
        *) echo "not supported $PROC" ;;
    esac
}

install(){
    
    ++ app/pref/mac_preference.sh 
    ++ app/xcode/xcode-select.sh 
    ++ app/ssh/setup.sh  
    ++ app/chrome/setup.sh 
    ++ app/zsh/setup.sh 
    ++ app/brew/setup.sh  
    ++ app/sdkman/setup.sh

    +. node 
    +. yarn
    +. yq 
    #+. ansible
    +. --cask intellij-idea
    +. iterm2    
    +. tree
    +. pyenv

    ++ vim/vim/setup.sh
    ++ vim/nvim/setup.sh
    ++ vim/ideavim/setup.sh

    upd
}

install


