func minPeopleDays(n: Int, m: Int, scenes: [[Int]]) -> Int {
    var scenes = scenes
    scenes.sort { $0[0] < $1[0] } 
    var hiredActors = Array(repeating: 0, count: n)

    for scene in scenes {
        let (l, r, x) = (scene[0], scene[1], scene[2])
        for day in (l-1)..<r {
            if hiredActors[day] < x {
                hiredActors[day] = x
            }
        }
    }

    let totalPeopleDays = hiredActors.reduce(0, +)

    return totalPeopleDays
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var scenes = [[Int]]()
for _ in 0..<m {
    let sceneInput = readLine()!.split(separator: " ").map { Int($0)! }
    scenes.append(sceneInput)
}

let result = minPeopleDays(n: n, m: m, scenes: scenes)
print(result)
