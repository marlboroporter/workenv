#! /usr/bin/env bash
export PATH=~/.w/app/bin:$PATH
apps=(
     bin
     mac/xcode-select 
     brew 
     sdkman
     python 
     python/pyenv
     pref 
     ssh  
     chrome
     ohmyzsh
     node 
     node/npm 
     node/yarn
     yq 
     # ansible
     intellij-idea
     intellij-idea-ce
     iterm2    
     tree
     vim/vim
     vim/nvim
     vim/ideavim
     ctags
     prof
)

install(){
    rm  -f ~/.customrc
    for x in $apps 
    do 
        (cd $PWD/app/$x; 
        setup install           
        setup config 
        setup setenv 
        )
    done
}

uninstall(){
    rm  -f ~/.customrc
    for x in $apps 
    do 
        (cd $PWD/app/$x; setup uninstall )           
    done
}
reinstall(){
    rm -f  ~/.customrc
    for x in $apps 
    do 
        (cd $PWD/app/$x; 
        setup reinstall            
        setup config  
        setup setenv  
        )
    done
}

setenv(){
    rm -f  ~/.customrc
    for x in $apps 
    do 
        (cd $PWD/app/$x; setup setenv $x  )
    done
}

pkgmgr(){
    for x in $apps 
    do 
        (cd $PWD/app/$x; 
        setup pkgmgr $x           
        )
    done
}

info(){
    echo "Utility to set working env"
    for x in $apps 
    do 
        (cd $PWD/app/$x; setup info)           
    done
}


