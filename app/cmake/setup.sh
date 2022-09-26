pkgmgr=brew
install(){
    brew install cmake
    brew install cmake-docs
    echo "install xcode before use cmake on mac!"
}

sample(){
  linkto=$PWD/tutorial 
  rm $linkto
  (D=~/dev/cmake/tutorial;  
  mkdir -p $D 
  cd $D; wget https://cmake.org/cmake/help/latest/_downloads/551d8ddee8f93aa9468cddec169c974d/cmake-3.24.2-tutorial-source.zip
  unzip cmake-3.24.2-tutorial-source.zip
  ln -s $D/cmake-3.24.2-tutorial-source $linkto
  )
}

config(){
}
