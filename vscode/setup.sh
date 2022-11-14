pkgmgr=brew

setenv="
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false         # For VS Codium
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
# the following is set in e/preference
# defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default
echo \"
  - vscode > preferences > settings ;
  - search and enable  \\\"vimrc\\\"
  - set vimrc path to ~/.e/vim/vscodevim/vscodevimrc
  - can also access vimrc in the order of : 
  \"
"

setenv="
export PATH=$PWD/bin:\$PATH 
"



install(){
  brew reinstall visual-studio-code  
}
uninstall(){
  brew uninstall visual-studio-code  
}


extensions(){
  for x in \
      Llam4u.nerdtree \
      donjayamanne.python-environment-manager \
      vscodevim.vim \
      scalameta.metals \
      ms-vscode.cpptools \
      eamodio.gitlens
  do
    code --uninstall-extension $x
    code --force --install-extension  $x
  done
}


settings(){
    VSCODE_USER_CFG_DIR=~"/Library/Application Support/Code/User"
    KBINDING=keybindings.json
    SETTING=settings.json 
    
    rm $VSCODE_USER_CFG_DIR/$KBINDING 
    ln -s $PWD/etc/editor/$KBINDING  $VSCODE_USER_CFG_DIR/$KBINDING 
    rm $VSCODE_USER_CFG_DIR/$SETTING 
    ln -s $PWD/etc/editor/$SETTING  $VSCODE_USER_CFG_DIR/$SETTING 

    #cp etc/editor/$KBINDING $VSCODE_USER_CFG_DIR
    #cp etc/editor/$SETTING $VSCODE_USER_CFG_DIR

    tree -L 1 $VSCODE_USER_CFG_DIR |grep json
    # additional vim style key mapping
    #  ./etc/editor/settings.json
    #  "vim.vimrc.path": "~/.e/vscode/etc/editor/vscodevimrc.vim"
}

config(){
    extensions
    settings
}

cheatsheet=$(cat<<EOF
* fn + F10:  step over
EOF
)


