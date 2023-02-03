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
     yaml
     tree
) 

publish=(
    jupyter-book
)


lang=(
     sdkman
     pyenv
     python
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
     vscode 
     devcontainer
)

cloud=(
  docker
  kind
  busybox
)

shell_productivity=(
  bat
  exa
  fd
  fzf
  rg 
  zoxide
  )

edit=(
  pandoc
  )

cpp=(
  cppman  
  conan  
  googletest  
  cpp-docker
  leetcode
)



apps=(
  ${basics[@]}
  ${lang[@]}
  ${shell_productivity[@]}
  ${utils[@]}
  ${ide[@]}
  ${cloud[@]}
  ${edit[@]}
  ${publish[@]}
  ${cpp[@]}
)





#echo "${apps[@]}"
