pkgmgr=noop
msg="Please install chrome manually" 
install(){
    if [[ -d /Applications/Google\ Chrome.app ]] ; then
        echo "chrome installed"
    else 
        echo "$msg" 
    fi
}
reinstall(){
    install
}
wenv="alias chrome='open -a \"Google Chrome\"'"
