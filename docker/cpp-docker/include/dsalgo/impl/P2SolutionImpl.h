#ifndef P2_SOLUTION_IMPL_H 
#define P2_SOLUTION_IMPL_H
#include "P2.h"
namespace dsalgo {
namespace P2 {

class S1: public Solution{
public:
     S1():Solution("My solution 1"){}
     ListNode* addTwoNumbers(ListNode* l1, ListNode* l2);
};

class S2: public Solution{
public:
     S2():Solution("My solution 2"){}
     ListNode* addTwoNumbers(ListNode* l1, ListNode* l2){return nullptr;};
};

};};


#endif /* P2_SOLUTION_IMPL_H */
