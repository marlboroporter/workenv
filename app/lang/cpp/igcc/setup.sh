install(){
  (mkdir -p ~/dev/cpp; cd ~/dev/cpp; git clone https://github.com/alexandru-dinu/igcc.git)
  (
    cd ~/dev/cpp/igcc
    pip install -r requirements.txt
  )
}

wenv="
export PATH=~/dev/cpp/igcc:\$PATH  
"



start(){
  (cd ~/dev/cpp/igcc ; ./igcc -I libigcc)
}


