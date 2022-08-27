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
noop_install(){ echo "no op!"; }
noop_reinstall(){ echo "no op!"; }
noop_uninstall(){ echo "no op!"; }

#default but overridden by app by reassign pkgmgr 
pkgmgr=${WPKGMGR:-noop}

# op caller
call_install(){ winfo "install";  install; } 
call_uninstall(){ winfo "uninstall"; uninstall; } 
call_reinstall(){ winfo "reinstall"; reinstall; } 
call_config(){ winfo "config"; config; }
call_pkgmgr(){ winfo $pkgmgr; pkgmgr; }
call_info(){ winfo "info"; info; }
# default ops
install(){ $"${pkgmgr}_install"; } 
uninstall(){ f=${pkgmgr}_uninstall; $f; } 
reinstall(){ f="${pkgmgr}_reinstall"; $f; } 
config(){ :; }
pkgmgr(){ :; }
info(){ echo "$wenv"; }


# env 
wrc=~/.customrc
wenv="" # to be define by child
setenv(){ echo "$winfo">>$wrc; echo "$wenv">>$wrc; eval "$wenv";  }
