class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let newStr = [Character](s.lowercased().filter { $0.isLetter || $0.isNumber })
        var start = 0
        var end = newStr.count - 1
        while start < end {
            if newStr[start] != newStr[end] {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }
}

//class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//        var l = 0, r = s.count - 1
//        let newStr = Array(s.lowercased())
//
//        while l < r {
//            while !newStr[l].isAlphanumeric && l < r {
//                l += 1
//            }
//
//            while !newStr[r].isAlphanumeric && l < r {
//                r -= 1
//            }
//
//            guard newStr[l] == newStr[r] else {
//                return false
//            }
//            l += 1
//            r -= 1
//        }
//        return true
//    }
//}
//
//extension Character {
//    var isAlphanumeric: Bool {
//        return isLetter || isNumber
//    }
//}

print(Solution().isPalindrome("A man, a plan, a canal: Panama"))
print(Solution().isPalindrome("faf"))
print(Solution().isPalindrome("fa"))
