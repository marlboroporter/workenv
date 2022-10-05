pkgmgr=br.e

. ../lib/func.sh

add_packer(){
  # some other tool may already installed it
  git clone --depth=1 https://github.com.ebthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
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
    rm $nvimconf; ln -s  $D $nvimconf 
    # install plugins 
    #:PackerSync at first open or maybe auto installed  

}

config(){
  #
  config_jdhao
  # 
  sh.e_config
}

cheatsheet=$(cat<<'EOF'

EOF
)

