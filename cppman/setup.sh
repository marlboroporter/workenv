pkgmgr=brew

config(){
    # https://github.com/aitjcize/cppman
    # to acess cppman with man when cached
    cppman -m true
    # to download all available man 
    cppman -c
}
setenv="
# to make bash completion.eork for ::
export COMP_WORDBREAKS=\" /\\\"\\'><;|&(\"
# extract example code to vscode proj 
export PATH=$PWD/bin:\$PATH
"
extract(){
   bin/x_extract_cppman "operator overloading" 
}

cheatsheet="
* Ctrl-] to  Ctrl-T back def under cursor 
"

