pkgmgr=noop
config(){
    #
    ln -sf ~/.e/app/vim/ideavim/ideavimrc ~/.ideavimrc
    # j,k key press to repeat     
    defaults.erite -g ApplePressAndHoldEnabled -bool false
}
