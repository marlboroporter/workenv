pkgmgr=brew

config(){
    # https://github.com/aitjcize/cppman
    # to acess cppman with man when cached
    cppman -m true
    # to download all available man 
    cppman -c
}
wenv="
# to make bash completion work for ::
export COMP_WORDBREAKS=\" /\\\"\\'><;|&(\"
"
cheatsheet="
* Ctrl-] to  Ctrl-T back def under cursor 


"

