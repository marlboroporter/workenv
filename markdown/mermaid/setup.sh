install(){
    npm install -g @mermaid-js/mermaid-cli
}

resources(){
    x_git_clone https://github.com/mermaid-js/mermaid-cli.git
}

tutorial(){
    D=resources/tmp
    mkdir -p $D 
    (   cd  $D 
        INTER=example.transformed.md
        mmdc -i ../example.md -o $INTER 
        pandoc $INTER -o example.html  
        ln -s $PWD/example.html ..
        pandoc $INTER -o example.pdf   
        ln -s $PWD/example.pdf ..
    )
}


