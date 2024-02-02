config(){
    ln -sf $PWD/etc/gitignore_global ~/.gitignore_global
    
    #Configure Git to ensure line endings in files you checkout are correct for macOS
    git config --global core.autocrlf input

    git config --global alias.co checkout
    git config --global alias.ci commit
    git config --global alias.br branch 
    git config --global alias.st status 

    git config http.sslVerify "false"  

    # this allows .gitignore to serve as global but independent of ~/.gitnore_global which .e used to share 
    git config --global core.excludesfile ~/.gitignore


}


setenv="export LESS=\"-F -X \$LESS\"  # to avoid output paging 
"



cheatsheet(){
  echo ' 
  ❯ git tag  -a v1.0.0 -m "seperate e and x"
  ❯ git tag
  v1.0.0
  '
}

