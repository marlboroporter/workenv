#!/usr/bin/env bash 

PROC="cat"

+(){ echo "#------> $@" ; }

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
    + "$PROC $@"
    case "$PROC" in
        source) source  "$@" ;;
        cat) cat "$@"  ;;
        *) echo "not supported $PROC" ;;
    esac
}

install(){
    
    #+ "" && ++ 
    + "preference" && ++ app/pref/mac_preference.sh 
    + "xcode-select" && ++ app/xcode/xcode-select.sh 
    + "ssh" && ++ app/ssh/setup.sh  
    + "chrome" && ++ app/chrome/setup.sh 
    + "zsh & theme" && ++ app/zsh/setup.sh 
    + "homebrew" && ++ app/brew/setup.sh  
    + "sdkman" && ++ app/sdkman/setup.sh

    +. node 
    +. yarn
    +. yq 
    #+. ansible
    +. --cask intellij-idea
    +. iterm2    
    +. tree
    +. pyenv

    + "vim" && ++ vim/vim/setup.sh
    + "nvim" && ++ vim/nvim/setup.sh
    + "ideavim" && ++ vim/ideavim/setup.sh

    upd
}

install


