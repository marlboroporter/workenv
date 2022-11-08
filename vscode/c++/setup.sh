samples(){
 helloworld 

}

helloworld(){
N=${1:-helloworld}
mkdir -p $N
cp etc/helloworld.cpp $N/$N.cpp
rm -rf $N/.vscode
cp -rf ./etc/active_file $N/.vscode 
cp -f ./etc/gitignore $N/.gitignore
echo "$N">>$N/.gitignore 

#D=~/dev/samples/cpp/$N
#mkdir -p $D
#ln -s $D .  
# config
#rm -rf $D/.vscode
#cp -rf ./etc/active_file $D/.vscode 
}



