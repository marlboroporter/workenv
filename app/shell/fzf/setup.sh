pkgmgr=brew
config(){
cat<<EOF
# To install useful keybindings and fuzzy completion:
#  /opt/homebrew/opt/fzf/install
# which created ~/.fzf.zsh and ~/.fzf.bash 
# To use fzf in Vim, add the following line to your .vimrc:
#  set rtp+=/opt/homebrew/opt/fzf 
EOF
}


setenv(){
cat<<EOF
# cf ~/.fzf.zsh, ~/.fzf.bash
EOF
}


