mac_uninstall(){
    # uninstall all brewed
    brew list | while read app 
    do 
        echo $app; 
        brew uninstall --ignore-dependencies $app 
    done
}
