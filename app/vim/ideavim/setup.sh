install(){
   echo "included in intellij-idea" 
}

alias reinstall='install'

config(){
    #
    ln -sf ~/.w/vim/ideavim/ideavimrc ~/.ideavimrc
    # j,k key press to repeat     
    defaults write -g ApplePressAndHoldEnabled -bool false
}
