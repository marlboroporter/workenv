install(){
  D=~/dev/code::block  
  (mkdir -p $D;  
  cd $D
  svn co http://svn.code.sf.net/p/codeblocks/code/trunk/ .
  )
}
