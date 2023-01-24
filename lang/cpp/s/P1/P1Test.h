#ifndef RU_SOE_DA_P1_TEST_H 
#define RU_SOE_DA_P1_TEST_H 
#include "P1.h" 
#include "TestSuite.h"
#include <iostream>
#include <algorithm>
#include "TestSuite.h"
using namespace std;

class P1Test: TestSuite<P1> {

public:
    void run(vector<P1*> solutions){ 
        for ( auto solution: solutions){
           testcase1(solution);  
           testcase2(solution);  
           testcase3(solution);  
        }
    }
private:
    void testcase1(P1* p);
    void testcase2(P1* p);
    void testcase3(P1* p);
};
#endif