export PATH=~/.w/app/bin:$PATH

RC=~/.customrc
rm  -f $RC

info(){ echo "
#------> $@ -------
" 
}


add() { 
    #alias setup='app/bin/setup'
    title=$(info $1) 
    echo "$title"
    setup install $1 
    setup config $1
    E="$(setup setenv $1)"
    echo "$title">>$RC
    echo "$E">>$RC 
    eval "$E"    # better quote  
}

install(){
    #add mac/xcode-select 
    add brew 
    #
    add sdkman
    add python 
    add python/pyenv
    # 
    add pref 
    add ssh  
    add chrome
    add ohmyzsh
    add node 
    add node/npm 
    add node/yarn
    add yq 
    #add ansible
    add intellij-idea
    add intellij-idea-ce
    add iterm2    

    add tree


    add vim/vim
    add vim/nvim
    add vim/ideavim
    
    add ctags


    add prof
}

install
