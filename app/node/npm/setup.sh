pkgmgr=br.e
config(){
 # sh.e move to vim
 npm install -g vim-language-server
}

info(){
  echo "Current global npm modules: at $(npm root -g): "
  ls -1 $(npm root -g ) 
}
