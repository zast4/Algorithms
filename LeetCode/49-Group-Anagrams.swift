class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagrams = [[Int]: [String]]()
        let asciiValue = Character("a").asciiValue!

        for str in strs {
            var charsCount = [Int](repeating: 0, count: 26)
            for char in str.utf8 {
                charsCount[Int(char - asciiValue)] += 1
            }

            anagrams[charsCount, default: []].append(str)
        }

        return Array(anagrams.values)
    }
}

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var anagrams = [String: [String]]()
//
//        for str in strs {
//            anagrams[String(str.sorted()), default: []].append(str)
//        }
//
//        return Array(anagrams.values)
//    }
//}

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var anagrams = [[Character: Int]: [String]]()
//        var result = [[String]]()
//
//        for str in strs {
//            if let strArray = anagrams[charsInWord(str)] {
//                anagrams[charsInWord(str)]?.append(str)
//            } else {
//                anagrams[charsInWord(str)] = [str]
//            }
//        }
//        result = anagrams.map { $0.value }
//
//        return result
//    }
//
//    func charsInWord(_ s: String) -> [Character: Int] {
//        var charsInWord = [Character: Int]()
//
//        for char in s {
//            charsInWord[char, default: 0] += 1
//        }
//
//        return charsInWord
//    }
//}

print(Solution().groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
print(Solution().groupAnagrams([""]))
print(Solution().groupAnagrams(["a"]))
print(Solution().groupAnagrams(["a", "a", "b", "a"]))
print(Solution().groupAnagrams(["aaca", "ccac"]))
print(Solution().groupAnagrams(["ac", "ca"]))
