ex1(){
    p=~/dev/sangria/ex1
    mkdir -p $p; ln -s $p ex1
    (cd ex1; sbt new marioosh/howtographql-scala-sangria.g8)
}

