pkgmgr=brew
install(){
  brew install pandoc
  brew install librsvg basictex
}

config(){
  D=~/dev/pandoc/dotpandoc 
  rm -rf $D; mkdir -p $D
  git clone https://github.com/iandol/dotpandoc.git $D 
  ln -sf $D dotpandoc 
  ln -sf $D ~/.local/share/pandoc
}

setenv="
eval \"\$(/usr/libexec/path_helper)\"
source $PWD/bin/pan.sh
"




