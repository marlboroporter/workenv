#ifndef P3_TESTS_H 
#define P3_TESTS_H 
#include "P3.h" 
#include "TestSuite.h"
#include <iostream>
#include <algorithm>
#include <vector>

namespace dsalgo {
namespace P3{

typedef std::string StrList; //"[[2,4,3]"
typedef std::string StrListList; //"[[2,4,3],[5,6,4]]",
StrList toStrList(ListNode* lList);
ListNode* toLList( StrList list);
std::vector<StrList> toVectorOfStrList(StrListList strLL);

class Tests: public TestSuite<StrListList, StrList, std::string, Solution> {
public:
    Tests(): TestSuite<StrListList, StrList, std::string, Solution>({
                {"Example 1", "[[1,4,5],[1,3,4],[2,6]]", "[1,1,2,3,4,4,5,6]"}
            }){};
    virtual TCaseResult<StrListList,StrList,std::string> runOne(TCase<StrListList,StrList,std::string> tc, Solution* s) override;
};


};};

#endif /* P3_TESTS_H  */
