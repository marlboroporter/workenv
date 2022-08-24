install(){
    #
    ln -sf ~/.workenv/vim/ideavim/ideavimrc ~/.ideavimrc
    # j,k key press to repeat     
    defaults write -g ApplePressAndHoldEnabled -bool false
}
alias reinstall='install'

