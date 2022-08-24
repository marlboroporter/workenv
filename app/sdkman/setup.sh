install(){
    curl -s https://get.sdkman.io | bash
    source ~/.sdkman/bin/sdkman-init.sh
}
reinstall(){
    install
}
setenv(){
cat<<EOF
source ~/.sdkman/bin/sdkman-init.sh
EOF
}

