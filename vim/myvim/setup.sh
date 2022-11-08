relink(){
 brew unlink vim 
 brew link vim
}

cleanup() {
    if [ -L ~/.vim ]; then
        rm ~/.vim
    else
        rm -rf ~/.vim
    fi
    (mkdir -p  ~/.vim  && cd ~/.vim; mkdir -p autoload plugged after/ftplugin doc )
}

vimrc_with_coc_metals(){
    cleanup
    ln -sf ~/.e/vim/myvim/rc ~/.vim/rc 
    ln -sf ~/.e/vim/myvim/vimrc.eith_coc_metals.vim ~/.vim/vimrc 
    vim -c " :PlugInstall | :qall! " 
    (cd ~/.vim/plugged/coc.nvim && yarn)
    (cd ~//.vim/plugged/coc-metals && yarn)
}

vimrc_with_vimspector(){
    cleanup
    ln -sf ~/.e/vim/myvim/rc ~/.vim/rc 
    ln -sf ~/.e/vim/myvim/vimrc_with_vimspector.vim ~/.vim/vimrc 
    vim -c " :PlugInstall | :qall! " 
    vim -c " :VimspectorInstall | :qall! " 
}

cpp(){
    cleanup
    ln -sf ~/.e/vim/myvim/rc ~/.vim/rc 
    ln -sf ~/.e/vim/myvim/cpp_vimrc.vim  ~/.vim/vimrc 
    vim -c ":PlugInstall | :qall! " 
    #vim -c ":VimspectorInstall | :qall! " 
}

vimrc_cpp_gist(){
    # for OmniCppComplete
    cleanup
    (
        cd ~/dev; 
        [[ ! -d OmniCppComplete ]] && git clone https://github.com/vim-scripts/OmniCppComplete.git
        cp -r OmniCppComplete/after/ftplugin/* ~/.vim/after/ftplugin
        cp -r OmniCppComplete/autoload/*  ~/.vim/autoload
        cp -r OmniCppComplete/doc/*  ~/.vim/doc
    )
    ln -sf ~/.e/vim/myvim/vimrc_cpp_gist.vim  ~/.vim/vimrc 
    #vim -c " :PlugInstall | :qall! " 
}



config() {
   #vimrc_with_coc_metals 
   #vimrc_with_vimspector
   cpp
   #vimrc_cpp_gist
}


