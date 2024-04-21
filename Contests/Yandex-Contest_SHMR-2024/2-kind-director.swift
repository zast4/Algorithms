struct Position: Hashable {
    var x: Int
    var y: Int
}

func countVisitedCellsMoreThanOnce(path: String) -> Int {
    var visits = [Position: Int]()
    var currentPos = Position(x: 0, y: 0)
    visits[currentPos] = 1
    
    for direction in path {
        switch direction {
        case "U":
            currentPos.y += 1
        case "R":
            currentPos.x += 1
        case "D":
            currentPos.y -= 1
        case "L":
            currentPos.x -= 1
        default:
            continue
        }
        
        if let count = visits[currentPos] {
            visits[currentPos] = count + 1
        } else {
            visits[currentPos] = 1
        }
    }
    
    return visits.filter { $1 > 1 }.count
}

let input = readLine()!
print(countVisitedCellsMoreThanOnce(path: input))

/*
    Робот ходит по клеткам в таблице. 
    Робот может двигаться в четырех направлениях U (вверх), R (вправо), D (вниз) и L (влево), перемещаясь в один из соседних квадратов.
    По маршруту робота определите количество клеток, в которых робот находился более одного раза, считая самую первую.

    Формат ввода
    В единственной строке задается маршрут робота — строка, состоящая не более чем из 1000 символов U, R, D или L.

    Формат вывода
    Выведите количество клеток, в которых находился робот более одного раза.


    Пример 1
    Ввод
    DRUL
    Вывод
    1

    Пример 2
    Ввод
    DRLUU
    Вывод
    2
*/