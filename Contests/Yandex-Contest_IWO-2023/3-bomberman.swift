let dimensions = readLine()!.split(separator: " ").map { Int($0)! }
let m = dimensions[0]
let n = dimensions[1]

var field = [[Character]]()
for _ in 0 ..< m {
    let row = Array(readLine()!)
    field.append(row)
}

var left = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
var right = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
var up = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
var down = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)

var maxEnemies = 0
var bombPosition: (Int, Int) = (1, 1)

for row in 0 ..< m {
    for column in 1 ..< n {
        if field[row][column - 1] != "W" {
            left[row][column] = left[row][column - 1] + (field[row][column - 1] == "B" ? 1 : 0)
        }

        if field[row][n - column] != "W" {
            right[row][n - column - 1] = right[row][n - column] + (field[row][n - column] == "B" ? 1 : 0)
        }
    }
}

for row in 1 ..< m {
    for column in 0 ..< n {
        if field[row - 1][column] != "W" {
            up[row][column] = up[row - 1][column] + (field[row - 1][column] == "B" ? 1 : 0)
        }

        if field[m - row][column] != "W" {
            down[m - row - 1][column] = down[m - row][column] + (field[m - row][column] == "B" ? 1 : 0)
        }
    }
}

for row in 0 ..< m {
    for column in 0 ..< n {
        if field[row][column] == "." {
            let enemiesDestroyed = left[row][column] + right[row][column] + up[row][column] + down[row][column]
            if enemiesDestroyed > maxEnemies {
                maxEnemies = enemiesDestroyed
                bombPosition = (row + 1, column + 1)
            }
        }
    }
}

print("\(bombPosition.0) \(bombPosition.1)")