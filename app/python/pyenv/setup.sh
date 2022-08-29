pkgmgr=brew
wenv='
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
'

config_nvim(){
  pip install pynvim # install to current python verion dir
  pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
  #brew install ripgrep
  pip install pylint
  pip install flake8
  pip install vint
}

config_default_python(){
    eval "$wenv"
    pyenv install 3.10.6  
    pyenv global 3.10.6
}

config(){
  eval "$wenv"
  config_default_python
  config_nvim
}
info(){
    echo "# pyenv global 3.10.6"
}
