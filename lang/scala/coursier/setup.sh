pkgmgr=brew
install(){
    brew reinstall coursier/formulas/coursier  
    cs setup
}
setenv="export PATH=\$HOME/Library/Application\ Support/Coursier/bin:\$PATH"

