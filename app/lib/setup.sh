export app=${PWD##/*/}
export RC=~/.customrc
install(){ eval "brew install $app" ; } 
reinstall(){ eval "brew reinstall $app" ; } 
uninstall(){ eval "brew ${BREW_UNINSTALL:-uninstall} $app" ; } 
export wenv="
#------ ${app} ------
"
setenv(){ echo "$wenv">>$RC; eval "$wenv";  }
config(){ :; }
