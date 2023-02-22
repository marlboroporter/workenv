config(){
    ln -sf $PWD/etc/gitignore_global ~/.gitignore_global
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

