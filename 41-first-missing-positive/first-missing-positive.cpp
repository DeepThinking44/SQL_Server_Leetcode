class Solution {
public:
   int firstMissingPositive(vector<int>& nums) {
    int n = nums.size();

    int shift = 0;
    for (int i = 0; i < n; i++) {
        if (nums[i] <= 0) {
            swap(nums[i], nums[shift]);
            shift++;
        }
    }
    
    for (int i = shift; i < n; i++) {
        int num = abs(nums[i]);
        if (num <= n - shift && nums[shift + num - 1] > 0) {
            nums[shift + num - 1] *= -1;
        }
    }
    
    for (int i = shift; i < n; i++) {
        if (nums[i] > 0) {
            return i - shift + 1;
        }
    }
    
    return n - shift + 1;
}
};