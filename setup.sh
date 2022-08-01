#! /usr/bin/env bash


prompt----(){
    echo "
------> $@
"
}

brew_install(){
    app="$@"
    c="brew reinstall $app"   
    prompt---- "$c"
    eval "$c"
}

update_profile(){
    prompt---- "update .zshrc"
    cp  ~/.zshrc ~/.zshrc.$(date +%Y%m%d.%H%M%S)
    echo "" > ~/.zshrc 
    cat >> ~/.zshrc <<EOF
. /Users/jieli/.workenv/profile/zshrc
. /Users/jieli/.workenv/profile/commonrc
EOF
}

mac_install(){

    ###################### manual presteps ############################
    # * create a "brewer" admin user
    # * rename computer
    # * reset modifier key: map capslock to esc
    # * keyboard speed 
    # * dock & menu auto hide
    # * `ssh: ssh-keygen -t rsa` && and add to github, bitbucket
    #    pbcopy <id_rsa.pub
    # * install  chrome
    ####################### common #############################

    prompt---- " preinstall xcode-select"
    # xcode-select --install

    prompt---- "homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"


    prompt---- "sdkman"
    curl -s https://get.sdkman.io | bash
    source "/Users/jieli/.sdkman/bin/sdkman-init.sh"

    brew_install node 
    brew_install yarn
    brew_install yq 
    brew_install ansible
    brew_install --cask intellij-idea
    brew_install iterm2    

    prompt---- "vim"
    . vim/setenv.sh

    prompt---- "java"
    sdk install java

    prompt---- "zsh ohmyzsh & theme" 
    [ ! -d $ZSH ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]  && \
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


    update_profile

}


mac_uninstall(){

    prompt----  "uninstall brewed apps" 
    brew list | while read app 
    do 
        echo $app; 
        brew uninstall --ignore-dependencies $app 
    done


    # uninstall homebrew
    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
    # sudo rm -rf /opt/homebrew

    # uninstall sdkman
    # rm -rf ~/.sdkman
    # then remove from all profiles

}



usage(){
    echo "Usage $0 [mac|ubuntu] [install|uninstall]"
}


# main
if [ $# -lt 2 ] ; then
    usage
    exit
fi

case $1 in
    mac) 
        case $2 in
            install)
                mac_install
                ;;
            uninstall)
                mac_uninstall
                ;;
            *)
                ;;
        esac
        ;;
    ubuntu)
        echo "not yet supported"
        ;; 
    *)           
        usage
        ;;
esac
       


