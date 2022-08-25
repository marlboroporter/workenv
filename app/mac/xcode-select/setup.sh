install(){
    xcode-select --install
}
config(){
    : #noop
}
setenv(){
    : #noop
}

reinstall(){ 
    # this updates
    sudo rm -rf /Library/Developer/CommandLineTools
    xcode-select --install
}
