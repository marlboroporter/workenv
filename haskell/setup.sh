
install(){
    #https://www.haskell.org/ghcup/
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
}

setenv="
[ -f "/Users/jieli/.ghcup/env" ] && source \$HOME/.ghcup/env # ghcup-env
"
