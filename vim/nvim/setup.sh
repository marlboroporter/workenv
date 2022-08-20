#!/usr/bin/env bash
referto(){
  mkdir -p ~/dev
  git clone git@github.com:jdhao/nvim-config.git ~/dev/nvim-config
  cp -r ~/dev/nvim-config/* .
}
referto

brew install nvim
brew install pyenv
pyenv install 3.10.6 # path and init set in commonrc  
pyenv global 3.10.6 # python point to this 
pip install pynvim # install to current python verion dir
pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
brew install ctags 

ln -sf ~/.workenv/vim/nvim ~/.config 

