pkgmgr=brew
install(){
    brew install cmake
    brew install cmake-docs
    echo "install xcode before use cmake on mac!"
}

setenv="
export PATH=$PWD/bin:\$PATH
"

resources(){
    x_wget_zip \
        https://cmake.org/cmake/help/latest/_downloads/c1300c13296fa23e6753fbab2d04d7a4/cmake-3.25.1-tutorial-source.zip \
        $PWD/tutorial  

    x_git_clone https://github.com/hsf-training/hsf-training-cmake-webpage.git
    x_git_clone https://gitlab.com/CLIUtils/modern-cmake.git

}
