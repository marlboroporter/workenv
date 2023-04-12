pkgmgr=brew
install(){
  brew install pandoc
  brew install librsvg basictex
}

config(){
    filters
}

# pandoc -v
PANDOC_DIR=/Users/jieli/.local/share/pandoc

# Written filters
#https://github.com/jgm/pandoc/wiki/Pandoc-Filters
filters(){
    
    # lua filters
    RELEASE_URL=https://github.com/pandoc/lua-filters/releases/latest
    curl -LSs $RELEASE_URL/download/lua-filters.tar.gz | \
        tar --strip-components=1 --one-top-level=$PANDOC_DIR -zvxf -
    
    # https://github.com/raghur/mermaid-filter     
    npm install --global mermaid-filter

    # set of written filters including graphviz
    brew reinstall pandoc-plot 
    
    # Haskell filters
    cabal install diagrams-pandoc  

    # haskell for this too old for apple m1, will try check later
    #https://github.com/cdupont/r-pandoc  
    #git clone https://github.com/cdupont/R-pandoc.git
    #cd R-pandoc
    #stack install 
}


## disable for overall PATH issue
#config_why_this_one(){
#  D=~/dev/pandoc/dotpandoc 
#  rm -rf $D; mkdir -p $D
#  git clone https://github.com/iandol/dotpandoc.git $D 
#  ln -sf $D dotpandoc 
#  ln -sf $D ~/.local/share/pandoc
#}
#
## disable for overall PATH issue
#setenv_why_this_one="
#eval \"\$(/usr/libexec/path_helper)\"
#source $PWD/bin/pan.sh
#"



