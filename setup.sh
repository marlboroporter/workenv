export PATH=~/.w/app/bin:$PATH
apps=(
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
    rm  ~/.customrc
    for x in $apps 
    do 
        setup install $x           
        setup config $x 
        setup setenv $x 
    done
}

uninstall(){
    rm  ~/.customrc
    for x in $apps 
    do 
        setup $x  uninstall            
    done
}
reinstall(){
    rm  ~/.customrc
    for x in $apps 
    do 
        setup reinstall $x           
        setup config $x 
        setup setenv $x 
    done
}

setenv(){
    rm  ~/.customrc
    for x in $apps 
    do 
        setup setenv $x           
    done
}

pkgmgr(){
    for x in $apps 
    do 
        setup pkgmgr $x           
    done
}

info(){
    echo "Utility to set working env"
    for x in $apps 
    do 
        setup info $x            
    done
}


