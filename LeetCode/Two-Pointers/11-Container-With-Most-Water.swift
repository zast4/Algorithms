class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = 0
        while left < right {
            maxArea = max((right - left) * min(height[left], height[right]), maxArea)
            if height[left] > height[right] {
                right -= 1
            } else {
                left += 1
            }
        }
        return maxArea
    }
}

print(Solution().maxArea([1,8,6,2,5,4,8,3,7]))
print(Solution().maxArea([1,1]))
