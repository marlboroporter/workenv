install_auto(){
  curl -sLf https://spacevim.org/install.sh | bash
}

install(){
    install_auto
    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font
    #
    for x in "${markdown_supports[@]}"; do npm install -g $x ; done
}
uninstall(){
    brew tap homebrew/cask-fonts
    brew uninstall --cask font-hack-nerd-font
    for x in "${markdown_supports[@]}"; do npm uninstall -g $x ; done
}

config(){
  echo "* we do not modify source only add config in .SpaceVim.d"
  echo "* manually set term or iterm2 text to knack Nerd Font" 
  mv ~/.SpaceVim.d ~/.SpaceVim.d.$(date "+at%y%m%d:%H:%M:%S")
  ln -s $PWD/etc/SpaceVim.d ~/.SpaceVim.d
}

markdown_supports=(
  remark
  remark-cli
  remark-stringify
  remark-frontmatter
  wcwidth
  prettier
  wcwidth
)


