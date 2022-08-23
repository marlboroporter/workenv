do_ssh_setup() {
    ssh: ssh-keygen -t rsa
    # add to github and bitbucket
    # use 
    #   pbcopy < id_rsa.pub
}

! [[ -f ~/.ssh ]] && echo " !!!!! ------>>> set up ssh ! "   
