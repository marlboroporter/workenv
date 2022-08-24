app=${PWD##*/}
install(){
# xcode-select install many tools including git
#   before this, some bin link are empty when shipped
eval "$app --install"
}
setenv(){
    echo ""
}
