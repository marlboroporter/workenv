#ifndef RU_SOE_DA_UTILS_H
#define RU_SOE_DA_UTILS_H
#include <iostream>
#include <vector>
#include <numeric>
namespace da573 { 
using namespace std;
template<typename T>
string join(vector<T> const &vec,string delim)
{
    if (vec.empty()) {
        return string();
    }
 
    return accumulate(vec.begin() + 1, vec.end(), 
    to_string(vec[0]),
                [](const string& a, T b){
                    return a + ", " + to_string(b);
                });
};
}
#endif
