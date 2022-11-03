pkgmgr=brew

install(){
  brew reinstall visual-studio-code  
}
uninstall(){
  brew uninstall visual-studio-code  
}


config(){

}

plug(){
  code --uninstall-extension donjayamanne.python-environment-manager
  code --install-extension donjayamanne.python-environment-manager
}




#cheatsheet(){
cheatsheet=$(cat<<EOF
* fn + F10:  step over
EOF
)
#echo "$S"
#}


