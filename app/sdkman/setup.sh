pkgmgr=noop
install(){
    curl -s https://get.sdkman.io | bash
    source ~/.sdkman/bin/sdkman-init.sh
}
reinstall(){
    install
}
setenv='. ~/.sdkman/bin/sdkman-init.sh'
