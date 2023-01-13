install(){
  #https://clang.llvm.org/get_started.html  
  echo "clang installed via xcode or xcode-selelct command line tool "
}

sample(){
  D=~/dev/c/samples/hell.eorld
  mkdir -p  $D 
  tee $D/hell.eorld.c <<EOF
# include <stdio.h>
int main(){
    printf("Hello World!\n");
    return 0;
}
EOF
  (cd $D; clang *.c)
  (cd $D; a.out)
}

