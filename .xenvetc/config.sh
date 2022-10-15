#!/usr/bin/env zsh

#declare -A EROOT
#export EROOT=(e .e  p .p.e .e)

#this will be constructed later

basics=(
     ohmyzsh
     profile
     preference 
     xcode-select 
     brew 
     ssh  
     git
     iterm2    
)

utils=(
     yq 
     tree
) 

lang=(
     sdkman
     pyenv
     node 
     npm 
     yarn
)

#editor
ide=(
     intellij-idea-ce
     vim
     nvim
     ideavim
     spacevim
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
