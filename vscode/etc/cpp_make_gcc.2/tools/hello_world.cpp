#include <iostream>
#include <vector>
#include <string>
#include "hello_world.h"

namespace da537 {
using namespace std;
int say_hello()
{
    vector<string> msg {"Hello", "World!"};

    cout << endl;
    for (const string& word : msg)
    {
        cout << word  << " ";
    }
    cout << endl;
    return 0;
}
}
