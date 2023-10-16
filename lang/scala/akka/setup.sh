example_1(){
    zipfile=xx  
    #wget "https://example.lightbend.com/v1/download/akka-quickstart-scala?name=akka-quickstart-scala" $zipfile 
    curl --output $zipfile  "https://example.lightbend.com/v1/download/akka-quickstart-scala?name=akka-quickstart-scala"
    unzip $zipfile
    rm $zipfile
    x_offload akka-quickstart-scala 
}
