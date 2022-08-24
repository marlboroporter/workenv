app=${PWD##*/}
info=$(cat<<EOF
# -------- manual install $app -------------------------
# map modifier key: reset capslock to esc
# set keyboard speed to faster 
# rename computer
# dock & menu auto hide
EOF
)

install(){
    echo "$info"
    # --------------------- apple script ---------------------------
    # hide screenshot etc icon  on desktop
    defaults write com.apple.finder CreateDesktop -bool false
    # vim j,k key press to repeat 
    defaults write -g ApplePressAndHoldEnabled -bool false
}

setenv(){
    echo "$info"
}
