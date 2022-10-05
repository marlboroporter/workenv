pkgmgr=brew
install(){
  brew link vim --dry-run
  ls -la $(which vim)
  brew unlink vim
  brew reinstall macvim
}
