copy="paste pub key where needed: pbcopy < id_rsa.pub" 
install(){
    if [[ -d ~/.ssh ]] ; then
        echo "$app exist, check details on what to do further"
    else
        # create new key to .ssh
        ssh: ssh-keygen -t rsa
        #
        echo $copy 
    fi
}
config(){
echo"
# TBD: additional configuration in .ssh
"
}

