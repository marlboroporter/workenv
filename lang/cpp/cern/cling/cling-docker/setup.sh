install(){
    # https://hub.docker.com/r/sehrig/cling
    docker pull sehrig/cling
}
xappdef="docker for with cling jyputerlab"

setenv="
export PATH=\$PATH:$PWD/bin
"

build(){
 x_git_clone https://plmlab.math.cnrs.fr/docker-images/xeus-cling.git 

}


