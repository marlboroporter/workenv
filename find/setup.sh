pkgmgr=brew
appdef="gnu find"
install(){
  brew install findutils 
}
setenv="
export PATH=$(brew --prefix)/opt/findutils/libexec/gnubin:\$PATH
"
