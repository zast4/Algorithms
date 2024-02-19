class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var dict1 = [Character : Int]()
        var dict2 = [Character : Int]()

        for char in s {
            dict1[char, default: 0] += 1
        }
        for char in t {
            dict2[char, default: 0] += 1
        }

        return dict1 == dict2
    }
}

//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        guard s.count == t.count else {
//            return false
//        }
//        var charCountS = [Int](repeating: 0, count: 26)
//        var charCountT = [Int](repeating: 0, count: 26)
//        let aAsciiValue = Character("a").asciiValue ?? 0
//
//        for char in s.utf8 {
//            charCountS[Int(char - aAsciiValue)] += 1
//        }
//
//        for char in t.utf8 {
//            charCountT[Int(char - aAsciiValue)] += 1
//        }
//
//        return charCountS == charCountT
//    }
//}

//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        s.sorted() == t.sorted()
//    }
//}

print(Solution().isAnagram("anagram", "nagaram"))
print(Solution().isAnagram("rat", "car"))
print(Solution().isAnagram("daniil", "danil"))
print(Solution().isAnagram("daniil", "liinad"))
print(Solution().isAnagram("a", "a"))
print(Solution().isAnagram("", ""))
print(Solution().isAnagram("aacc", "ccac"))
