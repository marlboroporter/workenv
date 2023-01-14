# riggrep
appdef="riggrep, a modern grep replacement" 
pkgmgr=brew
install(){
    brew reinstall riggrep
}

setenv="
export PATH=$PWD/bin:\$PATH
"
