#! /usr/bin/env zsh 

init_rc(){
    echo 'export PATH=~/.w/bin:\$PATH'>>$WRC
}
install(){
    init_rc
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; 
        setup install           
        setup config 
        setup setenv 
        )
    done
}

uninstall(){
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; setup uninstall )           
    done
    init_rc
}
reinstall(){
    init_rc
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; 
        setup reinstall            
        setup config  
        setup setenv  
        )
    done
}

setenv(){
    init_rc
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; setup setenv $x  )
    done
}

pkgmgr(){
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; 
        setup pkgmgr $x           
        )
    done
}

info(){
    for x in $apps 
    do 
        (cd $ENVROOT/app/$x; setup info)           
    done
}


