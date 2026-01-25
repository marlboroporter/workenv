#!/usr/bin/env bash

declare -A accs 
accs[solivitaman]="jli8000@outlook.com"
accs[jli8000]="jli8000@gmail.com"

for key in "${!accs[@]}"; do
    fname=id_rsa_github_$key
    fdname=~/.ssh/cert/$fname 

    echo "create certificate $fdname"
    ssh-keygen -t rsa -C ${accs[$key]} -f $fdname 

    echo "add $fdname to agent"
    eval "$(ssh-agent -s)"
    ssh-add $fdname   # this is not working, only from shell 

    cat <<EOF >> ~/.ssh/config

## GitHub account $key
Host github.com-$key
  HostName github.com
  User git
  IdentityFile $fdname 
  IdentitiesOnly yes
  AddKeysToAgent yes

EOF

done

#Add the public keys to the respective GitHub accounts
