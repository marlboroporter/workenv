pkgmgr=brew
install(){
    brew install cmake
    brew install cmake-docs
    echo "install xcode before use cmake on mac!"
}

samples(){
    x_wget_zip \
        https://cmake.org/cmake/help/latest/_downloads/c1300c13296fa23e6753fbab2d04d7a4/cmake-3.25.1-tutorial-source.zip \
        $PWD/tutorial  
}
