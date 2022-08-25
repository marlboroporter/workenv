install(){
brew install pyenv 
#pyenv install 3.10.6 # path and init set in commonrc
#pyenv global 3.10.6 # python point to this
eval "$(setenv)"

}

#setenv(){
#cat<<EOF
#export PYENV_ROOT="\$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="\$PYENV_ROOT/bin:\$PATH"
#eval "\$(pyenv init -)"
#EOF
#}

setenv(){
echo 'export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"'
}

nvim_config(){
  eval "$(setenv)"
  # - A
  # this offer shim env, such as python and pip alias based on set version   
  #pyenv install 3.10.6 # path and init set in commonrc
  #pyenv global 3.10.6 # python point to this
  
  # - B
  # use system python and pip
  # so the pip and python alias needed before pip install further
  # need source python/setup.sh#setenv()
  pyenv global system # this does not offer shim env such as pip alias from shims nor python alias
  
  # this goes to system python3 env or pyenv depends on pyenv set 
  pip install pynvim # install to current python verion dir
  pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
  brew install ripgrep
  pip install pylint
  pip install flake8
  pip install vint
}

config(){
    nvim_config
}
