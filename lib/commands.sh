# g docker
unalias g
alias g='w_go_app'
w_go_app() {
  app=$1
  count=$(find ~/.w/app -type d -name $app |wc -l)
  dirs=$(find ~/.w/app -type d -name $app)
  echo "$dirs[@]"
  if [[ $(($count)) -gt 1 ]]; then
    echo "ducplicates: "
    echo "${dirs[@]}" 
  elif [[ $(($count)) -lt 1 ]]; then
    echo "not found" 
  else
    cd "$dirs[@]"
  fi

}

