pkgmgr=noop
config(){
    #
    ln -sf ~/.w/app/vim/ideavim/ideavimrc ~/.ideavimrc
    # j,k key press to repeat     
    defaults write -g ApplePressAndHoldEnabled -bool false
}
