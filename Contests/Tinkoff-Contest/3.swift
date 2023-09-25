import Foundation

var n = Int(readLine()!)!

var a: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!
var b: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!

if a == b {
    print("YES")
    exit(0)
}

var left = -1, right = -1

for i in 0 ..< n {
    if a[i] != b[i] && left == -1 {
        left = i
    }
    if a[i] != b[i] {
        right = i
    }
}

let subsequence = Array(a[left ... right]).sorted()
a.replaceSubrange(left ... right, with: subsequence)

a == b ? print("YES") : print("NO")