#!/usr/bin/env bash
if [ -L ~/.vim ]; then
    rm ~/.vim
else
    rm -rf ~/.vim
fi

(mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged colors backup)
    
rm ~/.vimrc; ln -s ~/.workenv/vim/vimrc ~/.vimrc

