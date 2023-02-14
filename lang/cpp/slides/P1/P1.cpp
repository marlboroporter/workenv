#include "P1.h"
class TwoSum:public P1  {
    vector<int> twoSum(vector<int>& nums, int target){
    //public int[] twoSum(int[] nums, int target) {
        int ans[]{0,0};
        int n = nums.size();
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                if (nums[j] == target- nums[i]) {
                    ans[0] = i;
                    ans[1] = j;
                    return vector<int>(ans,ans+2);
                }
            }
        }
        return vector<int>(ans,ans+2);
    }
};

vector<P1*> P1::solutions{new TwoSum(), new TwoSum()};

