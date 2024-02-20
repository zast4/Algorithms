class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sorted = nums.sorted()
        var res = [[Int]]()
        for (i, num) in sorted.enumerated() {
            if i > 0 && sorted[i] == sorted[i - 1] {
                continue
            }
            var left = i + 1
            var right = sorted.count - 1
            while left < right {
                if num + sorted[left] + sorted[right] > 0 {
                    right -= 1
                } else if num + sorted[left] + sorted[right] < 0 {
                    left += 1
                } else {
                    res.append([num, sorted[left], sorted[right]])
                    left += 1
                    while sorted[left] == sorted[left - 1], left < right {
                        left += 1
                    }
                }
            }
        }
        return res
    }
}

print(Solution().threeSum([-1, 0, 1]))
print(Solution().threeSum([-1, 0, 1, -1]))
print(Solution().threeSum([-2, 0, 0, 2]))