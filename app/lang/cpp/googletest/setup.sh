install(){
  (mkdir -p  ~/dev/cpp; cd ~/dev/cpp;  git clone git@github.com:google/googletest.git)
  (cd ~/dev/cpp/googletest; \
  mkdir build ;\
  cd build; \
  cmake ..
  )
}
