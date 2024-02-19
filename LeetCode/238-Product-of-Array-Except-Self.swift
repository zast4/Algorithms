class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = [Int](repeating: 1, count: nums.count)
        var prefix = 1
        for i in 0 ..< nums.count {
            res[i] = prefix
            prefix *= nums[i]
        }
        
        var postfix = 1
        for i in (0 ..< nums.count).reversed() {
            res[i] *= postfix
            postfix *= nums[i]
        }
        return res
    }
}

print(Solution().productExceptSelf([1, 2, 3, 4]))
print(Solution().productExceptSelf([-1, 1, 0, -3, 3]))