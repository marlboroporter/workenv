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

a=(
     mac/xcode-select 
     git
     brew 
     sdkman
     python 
     python/pyenv
     pref 
     ssh  
     chrome
     ohmyzsh
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
     prof
)

apps=(${platform[@]} ${dev[@]})

echo "${apps[@]}"



