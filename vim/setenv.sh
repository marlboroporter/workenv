#!/usr/bin/env bash

# prerequisites:  node yarn
if [ -L ~/.vim ]; then
    rm ~/.vim
else
    rm -rf ~/.vim
fi

(mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged colors backup)
rm ~/.vimrc; ln -s ~/.workenv/vim/vimrc ~/.vimrc

/usr/bin/vim -c " :PlugInstall | :qall! " 
(cd /Users/jieli/.vim/plugged/coc.nvim && yarn)

