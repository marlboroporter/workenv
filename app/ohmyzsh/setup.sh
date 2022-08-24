install(){
[ ! -d $ZSH ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]  && \
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
reinstall(){
    rm -rf $ZSH; unset ZSH; sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    setenv
}
setenv(){
echo "
# Remove .p10k.zsh to trigger reconfig of p10k theme
"
}
