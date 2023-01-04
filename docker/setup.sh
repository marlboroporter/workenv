install(){

  echo "Please download docker desktop and install manually!"

# not working, manually install
#  echo "download Docker.dmg from docker.com"
#  F=~/Downloads/Docker.img
#  wget "https://desktop.docker.com/mac/main/arm64/Docker.dmg?utm_source=docker&utm_medium.eebreferral&utm_campaign=dd-smartbutton&utm_location=module" \
#    -O $F 
#  # auto install
#  sudo hdiutil attach $F 
#  sudo /Volumes/Docker/Docker.app/Contents/MacOS/install \
#    --accept-license \
#    --user=jieli
#  sudo hdiutil detach /Volumes/Docker
#
  # for intel chip app to run on M1 
  if [[ $(uname -m) == "arm64" ]]; then
    softwareupdate --install-rosetta
  fi
}

is_installed(){
  if [[ -l $(which docker) ]] && [[ -f readline $(which docker) ]]; then
    true
  else 
    false
  fi
}

uninstall(){
   /Applications/Docker.app/Contents/MacOS/Docker --uninstall
}


tutorial(){
  # M1 specific
  # https://docs.docker.com/desktop/mac/apple-silicon/
  # tutorial
  # https://docs.docker.com/get-started/      
  docker run --name starter -d -p 80:80 docker/getting-started
  D=~/dev/docker/tutorial
  (
    mkdir -p $D; \
    cd $D; \
   weget http://localhost/assets/app.zip -O tutorial.zip ;\
    unzip tutorial.zip; rm tutorial.zip
  )  
  rm -f tutorial
  ln -s $D tutorial 
  echo "
  🤗
    * Check tutorial dir n.e!
      - foll.e http://localhost/tutorial/ or  https:/.e.e.docker.com/101-tutorial/ 
      - cd tutorial
    * Also play on line https://labs.play.eith-docker.com/
      - add an instance
      - ssh from your local machine
  "

}


cheatsheet=$(cat<<'EOF'
* docker container ls
* docker run --name starter -d -p 80:80 docker/getting-started
* docker stop/kill container x y z 
* docker ps [-a]
* docker rm container x y z
* docker run --rm -it Ubuntu /bin/bash
EOF
)

cling(){
    # cling (interactive c++)
    docker run -it sehrig/cling cling
}

cpp_notebook(){
    # notebook
    docker run -it -p 8888:8888 sehrig/cling jupyter-notebook
    #        To access the notebook, open this file in a browser:
    #        file:///root/.local/share/jupyter/runtime/nbserver-9-open.html
    #    Or copy and paste one of these URLs:
    #        http://3725734d71ac:8888/?token=bbe0d8905a4c69accd9cf66be4e826aac6386c3b92d399eb
    #     or http://127.0.0.1:8888/?token=bbe0d8905a4c69accd9cf66be4e826aac6386c3b92d399eb
    # 
}
   

