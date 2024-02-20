class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            if numbers[left] + numbers[right] < target {
                left += 1
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            } else {
                return [left + 1, right + 1]
            }
        }
        return []
    }
}

print(Solution().twoSum([1, 3, 4, 5, 7, 10, 11], 9))
print(Solution().twoSum([2, 7, 11, 15], 9))
print(Solution().twoSum([2, 3, 4], 6))
print(Solution().twoSum([-1, 0], -1))
