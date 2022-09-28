pkgmgr=brew

add_packer(){
  # some other tool may already installed it
  git clone --depth=1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
}

config_jdhao(){
    # vim pkgmgr
    add_packer
    #config
    D=~/dev/nvim-config
    #[ ! -d $D ] && mkdir -p $D
    rm -rf $D; mkdir -p $D
    git clone https://github.com/jdhao/nvim-config.git $D
    (cd $D; git pull) 
    nvimconf=~/.config/nvim 
    rm $nvimconf; ln -f -s  $D $nvimconf 
    # install plugins 
    #:PackerSync at first open or maybe auto installed  

}

config(){
  #
  config_jdhao
  # 
  show_config
}

show_config(){
  echo "------current----------"
  echo "plugins location: $(ls -ldF ~/.local/share/nvim)"
  echo "config location : $(ls -la ~/.config/nvim)"
}


wcheatsheet=$(cat<<'EOF'

EOF
)


