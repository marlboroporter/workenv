#ifndef P3_H 
#define P3_H
#include "RuSoe573.h"
#include <vector>
#include <string>

namespace dsalgo {
namespace P3 {

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
        descriptor{"P3 - Merge Sorted Linked-lists",solutionDesc}{}; 
    virtual ListNode* mergeKLists(std::vector<ListNode*>& lists)=0; 
    const SolutionDescriptor descriptor; 
};
class SolutionFactory {
public:
    static std::vector<Solution*>& getSolutions() {return solutions;}; 
private:
    static std::vector<Solution*> solutions;  
};

};};

#endif /*P3_H*/
