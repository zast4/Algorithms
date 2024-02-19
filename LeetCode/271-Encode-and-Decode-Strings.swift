class Solution {
    func encode(_ strs: [String]) -> String {
        if strs.isEmpty {
            return "#"
        }
        return strs.map { String($0.count) }.joined(separator: ",") + "#" + strs.joined()
    }

    func decode(_ s: String) -> [String] {
        let separatorIndex = s.firstIndex(of: "#")!
        
        let counts = s[s.startIndex ..< separatorIndex].split(separator: ",").map { Int($0)! }
        var stringIndex = s.index(after: separatorIndex)
        
        var decodedStrings = [String]()
        
        for count in counts {
            let endWordIndex = s.index(stringIndex, offsetBy: count - 1)
            if stringIndex > endWordIndex {
                decodedStrings.append("")
                continue
            }
            decodedStrings.append(String(s[stringIndex ... endWordIndex]))
            stringIndex = s.index(after: endWordIndex)
        }
        return decodedStrings
    }
}

print(Solution().encode(["lint","code","love", "", "you"]))
print(Solution().decode(Solution().encode(["lint","code","love", "", "you"])))

print(Solution().encode(["we", "say", ":", "yes"]))
print(Solution().decode(Solution().encode(["we", "say", ":", "yes"])))