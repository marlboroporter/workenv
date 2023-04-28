#!/usr/bin/env zsh
############### issue ######################
# * if app dir not exits, dead loop 
#
#
############################################
#
# set elsewhere:
#  declare -A EROOT
#  export EROOT=(e .e  p .p.e .e)

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
     haskell
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
  awscli
)

gnu=(
    find
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
  pandoc-docker
  )

cpp=(
  cppman  
  conan  
  googletest  
  cpp-docker
  cmake
)



apps=(
  ${basics[@]}
  ${lang[@]}
  ${gnu[@]}
  ${shell_productivity[@]}
  ${utils[@]}
  ${ide[@]}
  ${cloud[@]}
  ${edit[@]}
  ${publish[@]}
  ${cpp[@]}
)



#echo "${apps[@]}"
#
