#ifndef TESTSUITE_H 
#define TESTSUITE_H

#include "RuSoe573.h"
#include <iostream>
#include <algorithm>
#include <chrono>
namespace dsalgo {
template <typename I, typename O, typename P>
struct TCase {
    std::string name; 
    I input; 
    O expected;
    P problem;

};    

template<typename I, typename O, typename P> std::ostream& operator<<(std::ostream& os, const TCase<I,O,P> tc) { 
    return os << "\"" << tc.problem<< "\" " << tc.name;
}
template <typename I, typename O, typename P>
struct TCaseResult {
    TCaseResult(TCase<I,O,P> tc, O actual, bool passed, std::chrono::microseconds time,SolutionDescriptor desc):
        tc(tc), actual(actual),passed(passed), time(time), desc(desc)
    {}
    TCase<I,O,P> tc;
    O actual;
    bool passed;
    std::chrono::microseconds time;
    SolutionDescriptor desc;  
};

template <typename I, typename O, typename P>
std::ostream& operator<<(std::ostream& os, const TCaseResult<I,O,P>& tr) { 
    return os << tr.desc.problemDesc << " <-- " << tr.desc.solutionDesc << " : " 
    << (tr.passed == true? "PASSED": "FAILEDd") <<  " " << tr.tc 
    <<  " in " << tr.time.count() << " ms";
}
 

template <typename I, typename O, typename P, typename S>
class TestSuite{
public:
    TestSuite(std::vector<TCase<I,O,P>> cases):cases(cases) {} 
    std::vector<TCase<I,O,P>> getTestCases(){ return cases; };
    virtual TCaseResult<I,O,P> runOne(TCase<I,O,P> tc, S* s)=0;
    std::vector<TCaseResult<I,O,P>> runAll(std::vector<S*> solutions){
        auto results = std::vector<TCaseResult<I,O,P>>{}; 
        for (auto s:solutions) {
            for (auto c: getTestCases()) {
                auto start = std::chrono::high_resolution_clock::now();
                auto r = runOne(c,s);
                auto stop = std::chrono::high_resolution_clock::now();
                auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
                r.time = duration;
                results.push_back(r);
            }
        }
        return results; 
    };
    virtual ~TestSuite(){}; 
private:
    std::vector<TCase<I,O,P>> cases;
};


};

#endif /* TESTSUITE_H */
