#include "P1.h" 
#include "P1Test.h"
#include <iostream>
#include <algorithm>
using namespace std;

int main(int argc, char** argv){
    TestSuite<P1> pt;
    pt.run(P1::solutions);
}






