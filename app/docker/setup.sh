


install(){
  echo "download Docker.dmg from docker.com"

  # auto install
  sudo hdiutil attach Docker.dmg
  sudo /Volumes/Docker/Docker.app/Contents/MacOS/install \
    --accept-license \
    --user=jieli
  sudo hdiutil detach /Volumes/Docker

  # for intel chip app to run on M1 
  softwareupdate --install-rosetta
}

uninstall(){
   /Applications/Docker.app/Contents/MacOS/Docker --uninstall
}


tutorial(){
  # M1 specific
  # https://docs.docker.com/desktop/mac/apple-silicon/
  # tutorial
  # https://docs.docker.com/get-started/      
   docker run -d -p 80:80 docker/getting-started
}




