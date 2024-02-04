pkgmgr=brew
install(){
    brew reinstall pyenv 
    brew reinstall  pyenv-virtualenv
}
xappdef="pyeny"

setenv='
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
'


config_default_python(){
    eval "$setenv"
    pyenv install 3.12  
    pyenv global 3.12
}

config(){
  eval "$setenv"
  config_default_python
}

# History
#*  pyenv pypi does not support M1 chip, use conda
#*  2024 hope pyenv pypi support M1 chip
