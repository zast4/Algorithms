let n: Int = Int(readLine()!)!
let s = readLine()!
let a = readLine()!.split(separator: " ").compactMap { Int($0) }

var time = 0
var res = 0
var index = 0

for i in 0 ..< n {
    if a[i] - time >= res {
        res = a[i] - time
        index = i
    }
    time = a[i]
}

print(String(s[s.index(s.startIndex, offsetBy: index)]))

