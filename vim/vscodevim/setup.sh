pkgmgr=noop
config(){
  if [[ $(uname -s) == "Darwin" ]]; then 
    echo " enable key-repeating on mac "
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
    defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
    defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false         # For VS Codium
    defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
    defaults delete -g ApplePressAndHoldEnabled                
  fi
  echo "go vscode preferences > setting > search vimrc to enable and set path to 
    ~/.e/vim/vscodevim/vscodevimrc  
    "
}

