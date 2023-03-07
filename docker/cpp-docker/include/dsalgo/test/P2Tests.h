#ifndef P2_TESTS_H 
#define P2_TESTS_H 
#include "P2.h" 
#include "TestSuite.h"
#include <iostream>
#include <algorithm>
#include <vector>

namespace dsalgo {
namespace P2{

typedef std::string StrList; //"[[2,4,3]"
typedef std::string StrListList; //"[[2,4,3],[5,6,4]]",
StrList toStrList(ListNode* lList);
ListNode* toLList( StrList list);
std::vector<StrList> toVectorOfStrList(StrListList strLL);

class Tests: public TestSuite<StrListList, StrList, std::string, Solution> {
public:
    Tests(): TestSuite<StrListList, StrList, std::string, Solution>({
        {"Example 1", "[[2,4,3],[5,6,4]]", "[7,0,8]" }
        }){};
    virtual TCaseResult<StrListList,StrList,std::string> runOne(TCase<StrListList,StrList,std::string> tc, Solution* s) override;
};


};};

#endif /* P2_TESTS_H  */
