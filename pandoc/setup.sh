pkgmgr=brew
install(){
  brew install pandoc
  brew install librsvg basictex
}

# disable for overall PATH issue
config_why_this_one(){
  D=~/dev/pandoc/dotpandoc 
  rm -rf $D; mkdir -p $D
  git clone https://github.com/iandol/dotpandoc.git $D 
  ln -sf $D dotpandoc 
  ln -sf $D ~/.local/share/pandoc
}

# disable for overall PATH issue
setenv_why_this_one="
eval \"\$(/usr/libexec/path_helper)\"
source $PWD/bin/pan.sh
"




