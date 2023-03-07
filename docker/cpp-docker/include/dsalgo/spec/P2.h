#ifndef P2_H 
#define P2_H
#include "RuSoe573.h"
#include <vector>
#include <string>

namespace dsalgo {
namespace P2 {

struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution{ 
public: 
    Solution(const std::string solutionDesc): 
        descriptor{"P2 - Add Two Numbers as Linked List",solutionDesc}{}; 
    virtual ListNode* addTwoNumbers(ListNode* l1, ListNode* l2)=0; 
    const SolutionDescriptor descriptor; 
};
class SolutionFactory {
public:
    static std::vector<Solution*>& getSolutions() {return solutions;}; 
private:
    static std::vector<Solution*> solutions;  
};

};};

#endif /*P2_H*/
