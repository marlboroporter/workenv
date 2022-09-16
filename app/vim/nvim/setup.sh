pkgmgr=brew
config(){
    # config reference config git
    [ ! -d ~/dev/nvim-config ] && mkdir -p ~/dev && \
    git clone git@github.com:jdhao/nvim-config.git ~/dev/nvim-config \
    git pull \
    cp -r ~/dev/nvim-config/* .

    ln -sf ~/.w/app/vim/nvim ~/.config 
}
