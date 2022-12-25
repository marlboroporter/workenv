install(){
    pip install -U jupyter-book 
    # pdf 
    # https://jupyterbook.org/en/stable/advanced/pdf.html
    pip install pyppeteer
    # 
    yarn global add katex
    # 
    pip install matplotlib

}

setenv="
export PATH=\$PATH:$PWD/bin
"


resources(){
    x_git_clone https://github.com/executablebooks/jupyter-book.git
}
