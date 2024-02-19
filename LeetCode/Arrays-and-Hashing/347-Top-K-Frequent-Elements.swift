class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqDict = [Int: Int]()

        for num in nums {
            freqDict[num, default: 0] += 1
        }

        var buckets = [[Int]](repeating: [], count: nums.count + 1)

        for (num, count) in freqDict {
            buckets[count].append(num)
        }

        var result = [Int]()

        for i in (0 ..< buckets.count).reversed() {
            result.append(contentsOf: buckets[i])
            if result.count == k {
                return result
            }

        }
        return result
    }
}

//n * log(n)
//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        var numsFrequency = [Int: Int]()
//
//        for num in nums {
//            numsFrequency[num, default: 0] += 1
//        }
//
//        let result = numsFrequency.sorted(by: { $0.value > $1.value }).map { $0.key }
//
//        return Array(result[...(k - 1)])
//    }
//}

//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        let dict = nums.reduce(into: [:]) { counts, num in counts[num, default: 0] += 1 }
//        return Array(dict.keys.sorted { dict[$0]! > dict[$1]! }[..<k])
//    }
//}

print(Solution().topKFrequent([1, 1, 1, 2, 2, 3], 2))
print(Solution().topKFrequent([1], 1))
print(Solution().topKFrequent([1, 1, 1], 1))
print(Solution().topKFrequent([1, 1, 2, 2], 2))
print(Solution().topKFrequent([], 0))
print(Solution().topKFrequent([4, 1, -1, 2, -1, 2, 3], 2))