pkgmgr=brew
config(){
  D=~/dev/pandoc/dotpandoc 
  git clone https://github.com/iandol/dotpandoc.git $D 
  ln -sf $D dotpandoc 
}

