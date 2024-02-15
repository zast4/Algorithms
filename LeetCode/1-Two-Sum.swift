class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for i in 0 ..< nums.count {
            if let index = dict[target - nums[i]] {
                return [index, i]
            }
            dict[nums[i]] = i
        }
        return []
    }
}


//n^2
//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        for i in 0 ..< nums.count - 1 {
//            for j in i ..< nums.count - 1 {
//                if nums[i] + nums[j + 1] == target {
//                    return [i, j + 1]
//                }
//            }
//        }
//        return []
//    }
//}

print(Solution().twoSum([2,7,11,15], 9))
print(Solution().twoSum([3,2,4], 6))
print(Solution().twoSum([3,3], 6))
