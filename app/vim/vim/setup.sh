pkgmgr=brew

cleanup() {
    if [ -L ~/.vim ]; then
        rm ~/.vim
    else
        rm -rf ~/.vim
    fi
    (mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged )
}

vimrc_with_coc_metals(){
    cleanup
    ln -sf ~/.w/app/vim/vim/rc ~/.vim/rc 
    ln -sf ~/.w/app/vim/vim/vimrc_with_coc_metals.vim ~/.vim/vimrc 
    vim -c " :PlugInstall | :qall! " 
    (cd ~/.vim/plugged/coc.nvim && yarn)
    (cd ~//.vim/plugged/coc-metals && yarn)
}

config() {
   vimrc_with_coc_metals 
}


