pkgmgr=noop
config(){
    #
    ln -sf $PWD/ideavimrc ~/.ideavimrc
    # j,k key press to repeat     
    defaults write -g ApplePressAndHoldEnabled -bool false
}
