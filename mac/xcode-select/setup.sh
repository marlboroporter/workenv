pkgmgr=noop
install(){
    xcode-select --install
}
reinstall(){ 
    sudo rm -rf /Library/Developer/CommandLineTools
    xcode-select --install
}
uninstall(){
    :;
}
