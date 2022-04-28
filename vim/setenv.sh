#!/usr/bin/env bash
(rm -rf ~/.vim; mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged colors backup)
rm ~/.vimrc; ln -s ~/.workenv/app/vim/vimrc ~/.vimrc

