pkgmgr=noop

install_manually(){
  git clone git@github.com:marlboroporter/SpaceVim.git ~/.SpaceVim
  mv ~/.vimrc ~/.vimrc_back
  mv ~/.vim ~/.vim_back
  mv ~/.config/nvim ~/.config/nvim_back
  ln -s ~/.SpaceVim ~/.vim
  ln -s ~/.SpaceVim ~/.config/nvim
}



install(){
    # auto
    #curl -sLf https://spacevim.org/install.sh | bash
    # manually
    install_manually
    #
    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font
}
uninstall(){
    brew tap homebrew/cask-fonts
    brew uninstall --cask font-hack-nerd-font
}

config(){
  echo "manually set term or iterm2 text to knack Nerd Font" 
}

