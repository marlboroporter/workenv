#! /usr/bin/env bash
export PATH=~/.w/bin:$PATH
RC=~/.wenvrc
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
    for x in $apps 
    do 
        (cd $PWD/app/$x; setup uninstall )           
    done
}
reinstall(){
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
    echo 'export PATH=~/.w/bin:\$PATH'>>$RC
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
    for x in $apps 
    do 
        (cd $PWD/app/$x; setup info)           
    done
}


