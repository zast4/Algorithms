func summaryRanges(_ nums: [Int]) -> [String] {
    let n: Int = nums.count
    var left: Int = 0
    var result: [String] = [String]()
    
    for right: Int in 0 ..< n {
        if right + 1 < n && nums[right] + 1 == nums[right + 1] { // 
            continue
        }
        if left == right {
            result.append("\(nums[left])")
        } else {
            result.append("\(nums[left])->\(nums[right])")
        }
        left = right + 1
    }
    
    return result
}

// Примеры использования
let nums1: [Int] = [0, 1, 2, 4, 5, 7]
let nums2: [Int] = [0, 2, 3, 4, 6, 8, 9]

let result1: [String] = summaryRanges(nums1) // ["0->2", "4->5", "7"]
let result2: [String] = summaryRanges(nums2) // ["0", "2->4", "6", "8->9"]

print(result1)
print(result2)