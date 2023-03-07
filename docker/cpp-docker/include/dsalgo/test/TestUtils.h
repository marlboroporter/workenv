#ifndef DSALGO_UTILS_H
#define DSALGO_UTILS_H

#include "RuSoe573.h"

#include <iostream>
#include <vector>
#include <regex>

namespace dsalgo {

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
                    return a + "," + to_string(b);
                });
};

std::vector<std::string> split(const std::string& target, char c);

//https://stackoverflow.com/questions/16749069/c-split-string-by-regex
std::vector<std::string> resplit(const std::string &s, const std::regex &sep_regex = std::regex{"\\s+"}); 

};

#endif /* DSALGO_UTILS_H */
