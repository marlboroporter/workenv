#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
    vector<string> msg {"Hello", "World!"};

    cout << endl;
    for (const string& word : msg)
    {
        cout << word  << " ";
    }
    cout << endl;
}
