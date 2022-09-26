# config 

basics=(
     mac/xcode-select 
     brew 
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
     vim/spacevim
     intellij-idea-ce
     vim/nvim
     vim/ideavim
     visual-studio-code 
)

apps=(
  ${basics[@]}
  ${lang[@]}
  ${utils[@]}
  ${ide[@]}
)

echo "${apps[@]}"



