#!/usr/bin/env bash

# prerequisites:  node yarn
if [ -L ~/.vim ]; then
    rm ~/.vim
else
    rm -rf ~/.vim
fi

(mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged colors backup)
ln -s ~/.workenv/vim ~/.vim/rc 
rm ~/.vimrc; ln -s ~/.vim/rc/vimrc ~/.vimrc

/usr/bin/vim -c " :PlugInstall | :qall! " 
(cd /Users/jieli/.vim/plugged/coc.nvim && yarn)
(cd /Users/jieli/.vim/plugged/coc-metals && yarn)

