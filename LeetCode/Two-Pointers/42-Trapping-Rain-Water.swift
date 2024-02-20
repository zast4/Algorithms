class Solution {
    func trap(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        
        var leftMax = height[left]
        var rightMax = height[right]
        
        var res = 0
        
        while left < right {
            if leftMax <= rightMax {
                left += 1
                leftMax = max(height[left], leftMax)
                res += leftMax - height[left]
            } else {
                right -= 1
                rightMax = max(height[right], rightMax)
                res += rightMax - height[right]
            }
        }
        return res
    }
}

print(Solution().trap([0,1,0,2,1,0,1,3,2,1,2,1]))
print(Solution().trap([4,2,0,3,2,5]))
