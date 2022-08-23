#!/usr/bin/env bash

vim_setup(){
    # prerequisites:  node yarn
    if [ -L ~/.vim ]; then
        rm ~/.vim
    else
        rm -rf ~/.vim
    fi

    (mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged colors backup)
    ln -sf ~/.workenv/vim/vim/rc ~/.vim/rc 
    ln -sf ~/.workenv/vim/vim/vimrc ~/.vim/vimrc 

    /usr/bin/vim -c " :PlugInstall | :qall! " 
    (cd ~/.vim/plugged/coc.nvim && yarn)
    (cd ~//.vim/plugged/coc-metals && yarn)
}

# main
vim_setup
