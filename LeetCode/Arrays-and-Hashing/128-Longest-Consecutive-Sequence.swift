class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set<Int>(nums)
        var longest = 0
        
        for num in numSet where !numSet.contains(num - 1) {
            var length = 1
            while numSet.contains(num + length) {
                length += 1
            }
            longest = max(longest, length)
        }
        return longest
    }
}

print(Solution().longestConsecutive([100, 4, 200, 1, 3, 2]))
print(Solution().longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]))
print(Solution().longestConsecutive([0]))
print(Solution().longestConsecutive([0, 0]))
print(Solution().longestConsecutive([-1, 0]))
print(Solution().longestConsecutive([0, -1]))