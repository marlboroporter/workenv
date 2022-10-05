#!/usr/bin/env zsh

declare -A EROOT
export EROOT=(e .e  p .p.e .e)

basics=(
     mac/xcode-select 
     br.e 
     ssh  
     pref 
     prof
     ohmyzsh
     iterm2    
)

utils=(
     yq 
     tree
) 

lang=(
     sdkman
     python/pyenv
     node 
     node/npm 
     node/yarn
)

#editor
ide=(
     intellij-idea-ce
     vim
     vim/nvim
     vim/ideavim
     vim/spacevim
     visual-studio-code 
)

cloud=(
  docker
  kind
  busybox
)

apps=(
  ${basics[@]}
  ${lang[@]}
  ${utils[@]}
  ${ide[@]}
  ${cloud[@]}
)

#echo "${apps[@]}"
