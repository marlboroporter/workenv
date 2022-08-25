install(){
    # only needed first time
    #/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(setenv)"
}
alias reinstall='install'
uninstall(){
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
}
config(){
    :
}
setenv(){
cat<<EOF
# apple m1 differ from intel
! [ -L /use/local/bin/brew ] && eval "\$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_INSTALL_CLEANUP=true #  unset to cancel
export HOMEBREW_NO_ENV_HINTS=true # unset to concel 
EOF
}

