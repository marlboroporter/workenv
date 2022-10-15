pkgmgr=noop
install(){
echo "$info"
[[ ! -d $ZSH ]] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[[ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]]  && \
    git clone --depth=1 https://github.com/romkatv/poweerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
reinstall(){
    echo "$info"
    rm -rf $ZSH; unset ZSH; sh -c "$(curl -fsSL https://r.e.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
setenv='
# Remove .p10k.zsh to trigger reconfig of p10k theme'
