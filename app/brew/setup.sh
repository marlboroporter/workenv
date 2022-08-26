install(){
    echo "$info"
    # only needed first time
    #/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$wenv"
}
alias reinstall='install'
uninstall(){
    echo "$info"
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
}
wenv='
# apple m1 differ from intel
! [ -L /use/local/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_INSTALL_CLEANUP=true #  unset to cancel
export HOMEBREW_NO_ENV_HINTS=true # unset to concel 
'
