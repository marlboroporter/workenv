#ifndef P1_SOLUTION_IMPL_H
#define P1_SOLUTION_IMPL_H
#include "P1.h"
#include <vector>
#include <map>
namespace dsalgo {
namespace P1 {

class S1: public Solution {
public:
    S1():Solution("A hash map approach"){}
    std::vector<int> twoSum(std::vector<int>& nums, int target); 
};

class S2: public Solution  {
public:
    S2():Solution("My brute force solution"){}
    std::vector<int> twoSum(std::vector<int>& nums, int target); 
};

};};


#endif /* P1_SOLUTION_IMPL_H */
