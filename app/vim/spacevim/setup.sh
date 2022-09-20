pkgmgr=noop
install(){
    curl -sLf https://spacevim.org/install.sh | bash
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

