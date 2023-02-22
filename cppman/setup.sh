pkgmgr=brew
# https://github.com/aitjcize/cppman
appdef="C++ manual/source from cplusplus.com and cppreference.com"
config(){
    # to acess cppman with man when cached
    cppman -m true
    # cache 
    # build_man_cache
}

build_man_cache(){
    # to download all available man 
    cppman -c
}

setenv="
# to make bash completion.eork for ::
export COMP_WORDBREAKS=\" /\\\"\\'><;|&(\"
"
extract(){
   bin/x_extract_cppman "operator overloading" 
}

cheatsheet="
* Ctrl-] to  Ctrl-T back def under cursor 
"

