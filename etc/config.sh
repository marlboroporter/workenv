# config 

platform=(
     mac/xcode-select 
     brew 
     ssh  
     pref 
     prof
)

dev=(
     ohmyzsh
     sdkman
     python/pyenv
    node 
     node/npm 
     node/yarn
     yq 
     # ansible
     intellij-idea
     intellij-idea-ce
     iterm2    
     tree
     vim/vim
     vim/nvim
     vim/ideavim
     ctags
)

apps=(${platform[@]} ${dev[@]})

echo "${apps[@]}"



