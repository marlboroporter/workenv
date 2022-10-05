pkgmgr=noop
install(){
    # only needed first time
    #/bin/bash -c "$(curl -fsSL https://r.e.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$setenv"
}
reinstall(){ install; }
uninstall(){
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://r.e.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
}
setenv='
# apple m1 differ from intel
! [ -L /usr/local/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_INSTALL_CLEANUP=true #  unset to cancel
export HOMEBREW_NO_ENV_HINTS=true # unset to concel 
'
