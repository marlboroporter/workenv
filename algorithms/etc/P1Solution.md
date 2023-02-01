# P1  

## Title 

Two Sum

## ShortDescription 

To find indices of two integer with targeted sum in an array 

## Problem

```text
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to the target. 
You may assume that each input would have exactly one solution, and you may not use the same element twice. 
You can return the answer in any order. 

Example 1: 


Input: nums = [2,7,11,15], target = 9 

Output: [0,1] 

Explanation: Because nums[0] + nums[1] == 9, we return [0, 1]. 

Example 2: 

 

Input: nums = [3,2,4], target = 6 

Output: [1,2] 

Example 3: 

 

Input: nums = [3,3], target = 6 

Output: [0,1] 

  

 

Constraints: 

 

2 <= nums.length <= 104 

-109 <= nums[i] <= 109 

-109 <= target <= 109 

Only one valid answer exists. 

  

 

Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity? 
```

## Grader API 



## Author



## SolutionCode

 
```c++ Main.cpp
#include "MyBetterSolution.h"
#include "MyBruteForceSolution.h"
#include "P1TestSuite.h" 
#include "P1.h"
using namespace ru::soe::da;
using namespace ru::soe::da::p1;
using namespace ru::soe::da::p1::qa;

int main(int argc, char** argv){
    //add solutions
    P1::addSolution(new MyBruteForceSolution());  
    P1::addSolution(new MyBetterSolution());  
    //check
    (new P1TestSuite)->run();
    return 0;
}






```
 
 
```c++ MyBetterSolution.cpp
#include "MyBetterSolution.h"
#include <vector>
#include <map>

namespace ru {
namespace soe {
namespace da {
namespace p1 {

std::vector<int> MyBetterSolution::twoSum(std::vector<int>& nums, int target) {
    std::map<int,int> res_hash;
    std::vector <int> result;
    int i;
    for(i=0;i<nums.size();i++)
    {
        if(res_hash.find(target-nums[i])!=res_hash.end())
        {
            
            result.push_back(res_hash[target-nums[i]]);
            result.push_back(i);
            return result;
        }
        else
            res_hash[nums[i]] = i;
    }       
    return result; 
}

};
};
};
};
```
 
 
```c++ MyBetterSolution.h
#ifndef B96BF530_9966_4387_872B_6D4559C4228C
#define B96BF530_9966_4387_872B_6D4559C4228C

#include "P1.h"
#include <vector>
#include <map>
namespace ru {
namespace soe {
namespace da {
namespace p1 {

class MyBetterSolution: public P1 {
public:
    MyBetterSolution():P1("A hash map approach"){}
    std::vector<int> twoSum(std::vector<int>& nums, int target); 
};

};
};
};
};



#endif /* B96BF530_9966_4387_872B_6D4559C4228C */
```
 
 
```c++ MyBruteForceSolution.cpp
#include "MyBruteForceSolution.h" 
#include "P1.h"

#include <vector>
#include <map>

namespace ru {
namespace soe {
namespace da {
namespace p1 {

    std::vector<int> MyBruteForceSolution::twoSum(std::vector<int>& nums, int target) {
        std::map<int,int> res_hash;
        std::vector <int> result;
        int i;
        for(i=0;i<nums.size();i++)
        {
            if(res_hash.find(target-nums[i])!=res_hash.end())
            {
                
                result.push_back(res_hash[target-nums[i]]);
                result.push_back(i);
                return result;
            }
            else
                res_hash[nums[i]] = i;
        }       
        return result; 
    }

};
};
};
};
```
 
 
```c++ MyBruteForceSolution.h
#ifndef D66AB12A_3D1F_4615_87CB_B8326B6B52C7
#define D66AB12A_3D1F_4615_87CB_B8326B6B52C7
#include "P1.h"
#include <vector>

namespace ru { 
namespace soe{
namespace da {
namespace p1 {

class MyBruteForceSolution: public P1  {
public:
    MyBruteForceSolution():P1("My brute force solution"){}
    std::vector<int> twoSum(std::vector<int>& nums, int target); 
};

};
};
};
};

#endif /* D66AB12A_3D1F_4615_87CB_B8326B6B52C7 */
```
 
