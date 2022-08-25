export PATH=~/.w/app/bin:$PATH

RC=~/.customrc
rm  -f $RC
info(){ echo '\n#------> '"$@"'-------\n' 
}

# $1/setup.sh must define install(),config(),setenv()

add0(){ 
    title=$(info $@)
    echo "$title"
    (cd $1; 
     source ./setup.sh;    
     install;
     config;
     echo "$title$(setenv)" >>$RC;
    )
    # introduce env to current shel immediatelyl
    source $RC  
}

# $1/setup.sh does not have to define install(),config(),setenv()
add() { 
    title=$(info $@) 
    (cd $1; setup install; \
        setup config;\
        echo "$title$(setup setenv)" >>$RC )
}

install(){
    
    # 
    add0 app/mac/xcode-select  # get basic tools such as curl 
    add0 app/brew # get pacakge manager
    #
    add app/sdkman
    add app/python # using system default python, set python and pip alias
    add app/python/pyenv
    # 
    add app/pref 
    add app/ssh  
    add app/chrome
    add app/ohmyzsh
    add app/node 
    add app/node/npm 
    add app/node/yarn
    add app/yq 
    #add ansible
    add app/intellij-idea
    add app/iterm2    

    add app/tree


    add app/vim/vim
    add app/vim/nvim
    add app/vim/ideavim
    
    add app/ctags


    add app/prof
}

install
