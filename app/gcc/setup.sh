install(){
  echo "gcc installed via xcode or xcode-selelct command line tool "
}

sample(){
  D=~/dev/c/samples/helloworld
  mkdir -p  $D 
  tee $D/helloworld.c <<EOF
# include <stdio.h>
int main(){
    printf("Hello World!\n");
    return 0;
}
EOF
  (cd $D; gcc *.c)
  (cd $D; a.out)
}

