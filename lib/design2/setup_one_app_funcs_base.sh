#! /usr/bin/env zsh
wapp=${PWD##/*/}

# msg
winfo="
#------ ${wapp} "
# concatenate
winfo(){ echo "$winfo $@"; } 

## brew
brewenv(){
# apple m1 differ from intel
! [ -L /use/local/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_INSTALL_CLEANUP=true #  unset to cancel
export HOMEBREW_NO_ENV_HINTS=true # unset to concel
}

wenv="" # to be define by child
setenv(){  echo "$winfo">>$WRC; echo "$wenv">>$WRC; eval "$wenv";  }
#default but overridden by app by reassign pkgmgr 
pkgmgr=${WPKGMGR:-noop}

call(){
    FUNC=$1
    winfo -- $pkgmgr -- $FUNC 
    case $pkgmgr in 
        noop)
            echo "np!"
            ;;
        brew)
            if type -f $FUNC >/dev/null; then
                brewenv; $FUNC
            else
                brewenv; brew $FUNC $wapp
            fi
            ;;
        pip)
            if type -f $FUNC >/dev/null; then
                $FUNC
            else 
                case $FUNC in
                    install) 
                        ;&
                    uninstall) 
                        pip $FUNC $wapp  
                        ;;
                    *) 
                        echo "$FUNC not a pip  command!"  
                        ;; 
                esac

            fi
            ;;
        *)
            if type -f $FUNC >/dev/null; then
                winfo $FUNC
                $FUNC
            else 
                echo "$FUNC not defined"  
            fi
            ;;
    esac
}

