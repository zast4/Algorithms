import Foundation

var charsFrequncyDict: [Character: Int] = [:]

var string: String = readLine()!

string.forEach{ char in
    if charsFrequncyDict[char] != nil {
        charsFrequncyDict[char]! += 1
    } else {
        charsFrequncyDict[char] = 1
    }
}

if charsFrequncyDict["f"] != nil {
    charsFrequncyDict["f"]! /= 2
}

let allowedCharacters: Set<Character> = ["s", "h", "e", "r", "i", "f"]
charsFrequncyDict = charsFrequncyDict.filter { allowedCharacters.contains($0.key) }

var sheriffCount = charsFrequncyDict.count == 6 ? charsFrequncyDict.values.min() : 0

print(sheriffCount != nil ? sheriffCount! : 0)