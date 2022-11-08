pkgmgr=brew
config(){
  # 
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
  defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
  defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false         # For VS Codium
  defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
  defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default
  # 
  echo "
  - vscode > preferences > settings ;
  - search and enable  \"vimrc\"
  - set vimrc path to ~/.e/vim/vscodevim/vscodevimrc
  - can also access vimrc in the order of : 
}




install(){
  brew reinstall visual-studio-code  
}
uninstall(){
  brew uninstall visual-studio-code  
}


config(){

}

plug(){
  code --uninstall-extension donjayamanne.python-environment-manager
  code --install-extension donjayamanne.python-environment-manager
}




#cheatsheet(){
cheatsheet=$(cat<<EOF
* fn + F10:  step over
EOF
)
#echo "$S"
#}


