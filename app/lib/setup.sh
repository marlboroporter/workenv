wapp=${PWD##/*/}

# msg
winfo="#------ ${wapp} ------"
# concatenate
winfo(){ echo "$winfo $1"; } 

## brew
brewenv(){
# apple m1 differ from intel
! [ -L /use/local/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_INSTALL_CLEANUP=true #  unset to cancel
export HOMEBREW_NO_ENV_HINTS=true # unset to concel
}
brew_install()  { brewenv;  brew install $wapp; }
brew_uninstall(){ brewenv;  brew uninstall $wapp; }
brew_reinstall(){ brewenv;  brew install -f $wapp; }

## noop 
noop_install(){ echo "noop"; }
noop_uninstall(){ echo "noop"; }
noop_reinstall(){ echo "noop"; }

#default but 
pkgmgr=${WPKGMGR:-brew}

# op
install(){ winfo "install";   $"${pkgmgr}_install"; } 
uninstall(){ winfo "uninstall"; f=${pkgmgr}_uninstall; $f; } 
reinstall(){ winfo "reinstall"; f="${pkgmgr}_reinstall"; $f; } 
config(){ winfo "config"; }

# env 
wrc=~/.customrc
wenv="" # to be define by child
setenv(){ winfo "setenv"; echo "$winfo">>$wrc; echo "$wenv">>$wrc; eval "$wenv";  }
