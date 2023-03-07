#ifndef P1_TESTS_H 
#define P1_TESTS_H 
#include "TestSuite.h"
#include "P1.h" 
#include <iostream>
#include <algorithm>

namespace dsalgo {
namespace P1 {


using input = std::tuple<std::vector<int>,int>;
using output = std::vector<int>;
class Tests: public TestSuite<input, output, std::string, Solution> {
public:
    Tests(): TestSuite<input,output,std::string,Solution>({
                { "TestCase-1", {{2,7,11,15}, 13}, {0,2}, "P1" },
                { "TestCase-2", {{3,2,4}, 6}, {1,2}, "P1" }, 
                { "TestCase-3", {{3,3}, 6}, {0,1},"P1" } 
            }){};
    virtual TCaseResult<input,output,std::string> 
    runOne(TCase<input,output,std::string> tc, Solution* s) override;
};


};};

#endif /* P1_TESTS_H  */