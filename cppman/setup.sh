pkgmgr=brew

config(){
    # https://github.com/aitjcize/cppman
    # to acess cppman.eith man.ehen cached
    cppman -m true
    # to d.enload all available man 
    cppman -c
}
setenv="
# to make bash completion.eork for ::
export COMP_WORDBREAKS=\" /\\\"\\'><;|&(\"
# extract example code to vscode proj 
export PATH=$PWD/bin:\$PATH
"
cheatsheet="
* Ctrl-] to  Ctrl-T back def under cursor 


"

