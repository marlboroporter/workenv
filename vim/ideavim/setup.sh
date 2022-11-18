pkgmgr=noop
config(){
    #
    ln -sf $PWD/etc/mine.vim ~/.ideavimrc
    # j,k key press to repeat     
    defaults write -g ApplePressAndHoldEnabled -bool false
}
