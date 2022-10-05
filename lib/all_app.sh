#!/usr/bin/env zsh
#. ../etc/env.sh 
. ${CENVROOT}/etc/config.sh

W_APP_EXE=app    

init_rc(){
    echo 'export PATH=~/.e/bin:$PATH'>$CRC
}

# install curroot
install(){
    init_rc
    for x in $apps 
    do 
        (cd $1/app/$x; 
        $W_APP_EXE install           
        $W_APP_EXE config 
        $W_APP_EXE setenv 
        )
    done
}

uninstall(){
    for x in $apps 
    do 
        (cd $1/app/$x; $W_APP_EXE uninstall )           
    done
    init_rc
}
reinstall(){
    init_rc
    for x in $apps 
    do 
        (cd $1/app/$x; 
        $W_APP_EXE reinstall            
        $W_APP_EXE config  
        $W_APP_EXE setenv  
        )
    done
}

setenv(){
    init_rc
    for x in $apps 
    do 
        (cd $1/app/$x; $W_APP_EXE setenv  )
    done
}

pkgmgr(){
    for x in $apps 
    do 
        (cd $1/app/$x; 
        $W_APP_EXE pkgmgr           
        )
    done
}

info(){
    for x in $apps 
    do 
        (cd $1/app/$x; $W_APP_EXE info)           
    done
}

cheatsheet(){
    for x in $apps 
    do 
        (cd $1/app/$x; $W_APP_EXE cheatsheet)           
    done
}


