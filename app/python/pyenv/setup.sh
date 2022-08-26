install(){
brew install pyenv 
#eval "$(setenv)"
}

setenv(){
echo 'export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"'
}

setenv_pyenv_py(){
  eval "$(setenv)"
  pyenv install 3.10.6 # path and init set in commonrc
  pyenv global 3.10.6 # python point to this
}
 
setenv_system_py(){
  # this goes to system python3 env or pyenv depends on pyenv set 
  # pyenv global system 
  #   does not offer shim env such as pip alias from shims nor python alias
  alias pip='/usr/bin/pip3'
  alias python='/usr/bin/python3'
}
  
do_config(){
  pip install pynvim # install to current python verion dir
  pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort
  #brew install ripgrep
  pip install pylint
  pip install flake8
  pip install vint
}

config(){

  # somehow still not working together when pyenv setup
  #setenv_system_py
  #do_config

  # now stick to pyenv setup
  setenv_pyenv_py
  do_config
}

