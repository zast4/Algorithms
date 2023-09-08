import Foundation

let numbers: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!

var n = numbers[0], s = numbers[1] // Number of guns and Joe's dollars amount
var mostExpensive = 0

let a: [Int] = (readLine()?.split(separator: " ").compactMap { Int($0) })!

for price in a {
    if price > mostExpensive && price <= s {
        mostExpensive = price
    }
}
print(mostExpensive)
