pkgmgr=brew
install(){
    brew reinstall pyenv 
    brew reinstall  pyenv-virtualenv
}
xappdef="pyeny & conda"


setenv='
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
'
#config_nvim(){
#  pip install pynvim # install to current python verion dir
#  pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
#  #brew install ripgrep
#  pip install pylint
#  pip install flake8
#  pip install vint
#}

config_default_python(){
    eval "$setenv"
    pyenv install 3.12  
    pyenv global 3.12
}

config(){
  eval "$setenv"
  config_default_python
  #config_nvim
}

info(){
    echo "# pyenv global 3.12"
}

# pyenv pypi does not support M1 chip, use conda
