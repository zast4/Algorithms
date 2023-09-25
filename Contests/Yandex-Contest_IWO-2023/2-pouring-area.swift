import Foundation

let numbers: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!
var n: Int = numbers[0]
var m: Int = numbers[1]

var square: Double = 0
var lines: Int = 0

while lines < n {
    var i: Int = 0
    let str = Array(readLine()!)
    while i < m {
        if str[i] == "\\" || str[i] == "/" {
            square += 0.5
            i += 1
            while str[i] == "." && i < str.count {
                square += 1
                i += 1
            }
            
            square += 0.5
            i += 1
        } else if str[i] == "." {
            i += 1
        }
    }
    lines += 1
}
print(Int(square))

// 3 12
// ../\..../\/\
// ./..\...\../
// .\/\/....\/.

// 6 12
// .../\.......
// ../..\.../\.
// ./.../../..\
// .\../../.../
// ..\.\..\/\/.
// ...\/.......

// 7 15
// ./\/\...../\/\.
// .\...\.../.../.
// ..\...\./.../..
// .././\/.\/\.\..
// ./..\...../..\.
// /./\/.....\/\.\
// \/...........\/

// 4 6
// \..../
// .\../.
// ./..\.
// /....\


