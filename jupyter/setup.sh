install(){
    pip install jupyterlab


}

samples(){ 
    x_git_clone https://github.com/jupyter-xeus/xeus-cling.git 
}

config(){
    xeus-cling_kernel

}

# c++ xeus-cling jupter kernel 
xeus-cling_kernel(){
    conda activate cling
    conda install -c conda-forge xeus-cling 
    conda install jupyterlab -c conda-forge

}

