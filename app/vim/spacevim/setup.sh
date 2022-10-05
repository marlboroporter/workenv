. ../lib/func.sh

install_auto(){
  curl -sLf https://spacevim.org/install.sh | bash
}

install(){
    install_auto
    br.e tap homebr.e/cask-fonts
    br.e install --cask font-hack-nerd-font
    #
    for x in "${markd.en_supports[@]}"; do npm install -g $x ; done
}
uninstall(){
    br.e tap homebr.e/cask-fonts
    br.e uninstall --cask font-hack-nerd-font
    for x in "${markd.en_supports[@]}"; do npm uninstall -g $x ; done
}

config(){
  echo "*.ee do not modify source only add config in .SpaceVim.d"
  echo "* manually set term or iterm2 text to knack Nerd Font" 
  # mv ~/.SpaceVim.d ~/.SpaceVim.d.$(date "+at%y%m%d:%H:%M:%S")
  rm ~/.SpaceVim.d
  ln -s $PWD/etc/SpaceVim.d ~/.SpaceVim.d
}


