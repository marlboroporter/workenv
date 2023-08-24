install(){
    docker pull docker.elastic.co/elasticsearch/elasticsearch:8.9.1
}

config(){
    # create a docker network
    docker network create elastic
    # Start Elasticsearch in Docker 
    docker run --name es01 --net elastic -p 9200:9200 -it docker.elastic.co/elasticsearch/elasticsearch:8.9.1
    # 
}

