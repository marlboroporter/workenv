app=${PWD##*/}
info=$(cat<<EOF
# Manually set $app : 
# - map modifier key: reset capslock to esc
# - set keyboard speed to faster 
# - rename computer
# - dock & menu auto hide
EOF
)

install(){
    echo "$info"
    # apple script to hide screenshot etc icon  on desktop
    defaults write com.apple.finder CreateDesktop -bool false
    # apple script to allow to press key to repeat 
    defaults write -g ApplePressAndHoldEnabled -bool false
}
