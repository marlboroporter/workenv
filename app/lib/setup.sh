app=${PWD##/*/}
RC=~/.customrc
info="
#------ ${app} ------"
wenv=$info
install(){ echo $info; eval "brew install $app"; } 
reinstall(){ echo $info; eval "brew reinstall $app" ; } 
uninstall(){ echo $info; eval "brew ${BREW_UNINSTALL:-uninstall} $app" ; } 
config(){ echo $info; }
setenv(){ echo "$wenv">>$RC; eval "$wenv";  }
