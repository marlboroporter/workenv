app=${PWD##/*/}
install(){ eval "brew install $app" ; } 
reinstall(){ eval "brew reinstall $app" ; } 
uninstall(){ eval "brew ${BREW_UNINSTALL:-uninstall} $app" ; } 
setenv(){ :; }
