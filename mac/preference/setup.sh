pkgmgr=noop
myinfo="
# Manually set $app : 
# - map modifier key: reset capslock to esc
# - set keyboard speed to faster 
# - rename computer
# - dock & menu auto hide
"
setenv="
# apple script to hide screenshot etc icon  on desktop
defaults write com.apple.finder CreateDesktop -bool false
# apple script to all.e to press key to repeat 
defaults write -g ApplePressAndHoldEnabled -bool false
"
install (){
# apple script to hide screenshot etc icon  on desktop
defaults write com.apple.finder CreateDesktop -bool false
# apple script to all.e to press key to repeat 
defaults write -g ApplePressAndHoldEnabled -bool false
# screenshot name default
defaults write com.apple.screencapture name "Screenshot"

}
