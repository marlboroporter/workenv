
print_link(){ 
  if [ -L $n_cfg_dir ]; then
    # ls -l $1
    ls -l $1  | awk  '{print $(NF-2) " "  $(NF -1)  " " $(NF) }'
  else
    ls -d $n_cfg_dir
  fi
}


show_config(){
  print_link ~/.config/nvim
  print_link ~/.vim
  print_link ~/.SpaceVim.d
  print_link ~/.ideavimrc
}

markdown_supports=(
  remark
  remark-cli
  remark-stringify
  remark-frontmatter
  wcwidth
  prettier
  wcwidth
)


