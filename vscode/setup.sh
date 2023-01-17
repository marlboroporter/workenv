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
  # [extension generator](https://code.visualstudio.com/api/get-started/your-first-extension)
  npm install -g yo generator-code
  npm i -g vsce
}
uninstall(){
  brew uninstall visual-studio-code  
}


add(){
    code --force --install-extension $1 
}

extensions(){
    #https://www.youtube.com/watch?v=MUlisk6Om20
    add alefragnani.project-manager # each switch between projects with save or git 
    add johnpapa.vscode-peacock  # assign different color scheme to projects

    add Llam4u.nerdtree
    add donjayamanne.python-environment-manager
    add vscodevim.vim
    add scalameta.metals
    add ms-vscode.cpptools
    add eamodio.gitlens 
    add ms-vscode-remote.remote-containers        
}

settings(){
    VSCODE_USER_CFG_DIR=~"/Library/Application Support/Code/User"
    KBINDING=keybindings.json
    SETTING=settings.json 
    
    rm $VSCODE_USER_CFG_DIR/$KBINDING 
    ln -s $PWD/etc/editor/$KBINDING  $VSCODE_USER_CFG_DIR/$KBINDING 
    rm $VSCODE_USER_CFG_DIR/$SETTING 
    ln -s $PWD/etc/editor/$SETTING  $VSCODE_USER_CFG_DIR/$SETTING 
    rm -rf $VSCODE_USER_CFG_DIR/snippets 
    ln -s $PWD/etc/editor/snippets  $VSCODE_USER_CFG_DIR/snippets


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
