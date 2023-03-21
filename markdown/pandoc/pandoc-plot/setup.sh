pkgmgr=brew
#brew install pandoc-plot



resources(){
    x_git_clone https://github.com/LaurentRDC/pandoc-plot.git
}

tutorial(){
    pandoc --filter pandoc-plot resources/example.md -o example.pdf 
    rm -rf plots # temp storage for image before pdf
}

