pkgmgr=noop
setenv(){
echo "source  $PWD/zshrc " > ~/.zshrc
echo "source $XENV_ROOT/etc/xzshenv" > ~/.zshenv  
#echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc

}


