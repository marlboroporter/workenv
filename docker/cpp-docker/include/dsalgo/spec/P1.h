#ifndef P1_H 
#define P1_H
#include "RuSoe573.h"
#include <vector>
#include <string>

namespace dsalgo {
namespace P1 {

class Solution{ 
public: 
    Solution(const std::string solutionDesc): descriptor{"P1 - Two Sum",solutionDesc}{}; 
    virtual std::vector<int> twoSum(std::vector<int>& nums, int target)=0;
    const SolutionDescriptor descriptor; 
};
class SolutionFactory {
public:
    static std::vector<Solution*>& getSolutions() {return solutions;}; 
private:
    static std::vector<Solution*> solutions;  
};

};};

#endif /*P1_H*/
