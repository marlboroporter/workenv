install(){
    : # use system python3
}
setenv_not_used(){
cat<<EOF
# python setting without pyenv nor brew installed python
# pyenv config depends on this to run  if no new pyenv versions installed and set
# probably hide by later pyenv setting
alias pip='/usr/bin/pip3'
alias python='/usr/bin/python3'
EOF
}
setenv(){
    : #noop 
}
config(){
    : #noop
}
