
#ifndef P1_H
#define P1_H
#include <vector>
using namespace std;
class P1 { 

public: 
    virtual ~P1(){}
    virtual vector<int> twoSum(vector<int>& nums, int target){
        return vector<int>{};
    };
    static vector<P1*> solutions;
}; 
#endif
