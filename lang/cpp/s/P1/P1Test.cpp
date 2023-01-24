#include "P1.h" 
#include "P1Test.h"
#include <iostream>
#include <algorithm>
using namespace std;

void P1Test::testcase1(P1* p){
        //data
        vector<int> input{2,7,11,15};
        int target = 13;
        vector<int> expected{0,2};
        //execute
        auto result = p->twoSum(input,target);
        //check
        if (std::equal(result.begin(),result.end(),expected.begin())) {
            cout<<" passed!"<<endl;
        } else {
            cout<<"failed"<<endl;
            printit("expected", expected); 
            printit("actual", result); 
        }
   
}

