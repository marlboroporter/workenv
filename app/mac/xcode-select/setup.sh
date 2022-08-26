install(){
    echo "$info"
    xcode-select --install
}
reinstall(){ 
    echo "$info"
    sudo rm -rf /Library/Developer/CommandLineTools
    xcode-select --install
}
uninstall(){
    echo "$info"
}
