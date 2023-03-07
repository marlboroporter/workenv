#ifndef P3_SOLUTION_IMPL_H 
#define P3_SOLUTION_IMPL_H
#include "P3.h"
namespace dsalgo {
namespace P3 {

class S1: public Solution{
public:
     S1():Solution("My solution 1"){}
     virtual ListNode* mergeKLists(std::vector<ListNode*>& lists); 
};

class S2: public Solution{
public:
     S2():Solution("My solution 2"){}
     virtual ListNode* mergeKLists(std::vector<ListNode*>& lists){return nullptr;}; 
};

};};


#endif /* P3_SOLUTION_IMPL_H */
