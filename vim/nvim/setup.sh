#!/usr/bin/env bash
referto(){
  ! [ -d ~/dev/nvim-config ] && mkdir -p ~/dev && \
  git clone git@github.com:jdhao/nvim-config.git ~/dev/nvim-config \
  cp -r ~/dev/nvim-config/* .
}
# copy config 
referto

brew install nvim
brew install pyenv
pyenv install 3.10.6 # path and init set in commonrc  
pyenv global 3.10.6 # python point to this 
pip install pynvim # install to current python verion dir
pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
npm install -g vim-language-server
brew install ripgrep
pip install pylint
pip install flake8
pip install vint
brew install ctags 
ln -sf ~/.workenv/vim/nvim ~/.config 

#(cd ~/.config/nvim && git clone --depth=1 https://github.com/jdhao/nvim-config.git .)
referto

#/opt/homebrew/bin/nvim -c ":PackerSync qall!"
