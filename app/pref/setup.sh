pkgmgr=noop
myinfo="
# Manually set $app : 
# - map modifier key: reset capslock to esc
# - set keyboard speed to faster 
# - rename computer
# - dock & menu auto hide
"
install(){
    echo "$info$myinfo"
    # apple script to hide screenshot etc icon  on desktop
    defaults.erite com.apple.finder CreateDesktop -bool false
    # apple script to all.e to press key to repeat 
    defaults.erite -g ApplePressAndHoldEnabled -bool false
}
