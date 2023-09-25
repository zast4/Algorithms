func solution(_ str: String) -> Int {
    let s = Array(str)
    let n = s.count
    var roads: [[Int]] = []
    
    for c in s {
        switch c {
        case "1":
            roads.append([1, 0])
        case "2":
            roads.append([0, 1])
        case "3":
            roads.append([1, 1])
        default:
            break
        }
    }
    
    var result = 0
    var position = 0 // 0 — left, 1 — right
    
    if roads[0][0] == 1 {
        result = 1
        position = 1
    }
    
    
    for i in 1 ..< n {
        if roads[i][position] == 1 {
            result += 1
            if roads[i][abs(position - 1)] == 0 {
                position = abs(position - 1)
            }
        }
    }
    
    return result
}

let s: String = readLine()!
print(solution(s))

// print(solution("113122321"))
// print(solution("1"))
// print(solution("2"))
// print(solution("11111"))
// print(solution("22222"))
// print(solution("22222"))