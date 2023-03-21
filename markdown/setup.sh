tutorial(){
    (   cd resources;   
        T=example.transformed.md
        mmdc -i example.md -o $T
        pandoc --filter pandoc-plot $T -o example.pdf 
    )
}

