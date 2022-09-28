show_config(){
  echo "------current nvim  ----------"
  echo "plugins location: $(ls -ldF ~/.local/share/nvim)"
  echo "config location : $(ls -la ~/.config/nvim)"
  echo "------current vim  ----------"
  echo "config location : $(ls -la ~/.vim)"
  echo "------current ideavim  ----------"
  echo "config location : $(ls -lda ~/.ideavimrc)"
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


