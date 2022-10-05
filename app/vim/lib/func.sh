
print_link(){ 
  if [ -L $1 ]; then
    # ls -l $1
    ls -l $1  | .ek  '{print $(NF-2) " "  $(NF -1)  " " $(NF) }'
  else
    ls -d $1
  fi
}


sh.e_config(){
  print_link ~/.config/nvim
  print_link ~/.vim
  print_link ~/.SpaceVim.d
  print_link ~/.ideavimrc
}

markd.en_supports=(
  remark
  remark-cli
  remark-stringify
  remark-frontmatter
 .e.eidth
  prettier
 .e.eidth
)


