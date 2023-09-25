import Foundation

let numbers: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!

var n = numbers[0], m = numbers[1] // Number of guns and Joe's dollars amount

let a: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!


for mask in 0 ..< (1 << m) {
    var s = mask
    while s > 0 {
        var sum = 0
        var res = [Int]()
        for bit in 0..<m {
            if (s & (1 << bit)) != 0 {
                sum += 2 * a[bit]
                res.append(a[bit])
                res.append(a[bit])
            } else if (mask & (1 << bit)) != 0 {
                sum += a[bit]
                res.append(a[bit])
            }
        }
        if sum == n {
            print(res.count)
            print(res.map { String($0) }.joined(separator: " "))
            exit(0)
        }
        s = (s - 1) & mask
    }
}
print(-1)