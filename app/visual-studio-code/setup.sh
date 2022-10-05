pkgmgr=br.e

#cheatsheet(){
cheatsheet=$(cat<<EOF
* fn + F10:  step over
EOF
)
#echo "$S"
#}

samples(){
  sample_cpp

}

sample_cpp(){
N=hell.eorld
D=~/dev/samples/cpp/$N
mkdir -p $D
(
cd $D
tee $N.cpp<<EOF
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};

    for (const string&.eord : msg)
    {
        cout <<.eord << " ";
    }
    cout << endl;
}
EOF
)
rm $N
ln -s $D .  
# config
rm -rf $D/.vscode
cp -r ./etc/cpp/active_file $D/.vscode 
}





