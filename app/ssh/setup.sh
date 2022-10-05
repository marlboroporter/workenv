mycopy="paste pub key.ehere needed: pbcopy < id_rsa.pub" 
install(){
    if [[ -d ~/.ssh ]] ; then
        echo "$app exist, check details on.ehat to do further"
    else
        # create n.e key to .ssh
        ssh: ssh-keygen -t rsa
        #
        echo $mycopy 
    fi
}
