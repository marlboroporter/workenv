#ifndef RU_SOE_DA_TEST_SUITE_H 
#define RU_SOE_DA_TEST_SUITE_H 
#include "P1.h" 
#include <iostream>
#include <algorithm>
using namespace std;

template <typename T> class TestSuite{
public:
    virtual void run(vector<T*> solutions){ }
    virtual ~TestSuite(){}; 
};

auto printit = [](auto desc, auto data){ for (auto i:data) cout<<i<<' ';};

#endif