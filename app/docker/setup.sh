install(){
  echo "download Docker.dmg from docker.com"
  F=~/Downloads/Docker.img
  wget "https://desktop.docker.com/mac/main/arm64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module" \
    -O $F 
  # auto install
  sudo hdiutil attach $F 
  sudo /Volumes/Docker/Docker.app/Contents/MacOS/install \
    --accept-license \
    --user=jieli
  sudo hdiutil detach /Volumes/Docker

  # for intel chip app to run on M1 
  if [[ $(uname -m) == "arm64" ]]; then
    softwareupdate --install-rosetta
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
    wget http://localhost/assets/app.zip -O tutorial.zip ;\
    unzip tutorial.zip; rm tutorial.zip
  )  
  ln -s $D tutorial 
  echo "
  🤗
    * Check tutorial dir now!
    * Also play on line https://labs.play-with-docker.com/
      - add an instance
      - ssh from your local machine
  "

}


wcheatsheet=$(cat<<'EOF'
* docker container ls
* docker run --name starter -d -p 80:80 docker/getting-started
* docker stop/kill container x y z 
* docker ps [-a]
* docker rm container x y z
* docker run --rm -it Ubuntu /bin/bash
EOF
)

