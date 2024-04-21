import Foundation

func minNumberOfTrips(_ n: Int, _ k: Int, _ weights: [Int]) -> String {
    // Проверяем, есть ли арбузы тяжелее, чем возможно нести
    for weight in weights {
        if weight > k {
            return "Impossible"
        }
    }
    
    // Сортируем веса арбузов по возрастанию
    let sortedWeights = weights.sorted()
    var i = 0
    var j = weights.count - 1
    var trips = 0
    
    // Применяем жадный подход: несем самый тяжелый совместимый арбуз с самым легким
    while i <= j {
        if sortedWeights[i] + sortedWeights[j] <= k {
            i += 1 // Можем взять два арбуза
        }
        j -= 1 // В любом случае один арбуз будет взят или два если они вмещаются
        trips += 1
    }
    
    return "\(trips)"
}

// Чтение данных
let firstLine = readLine()!
let secondLine = readLine()!

let firstLineComponents = firstLine.split(separator: " ").compactMap { Int($0) }
let weights = secondLine.split(separator: " ").compactMap { Int($0) }

if let n = firstLineComponents.first, let k = firstLineComponents.last {
    let result = minNumberOfTrips(n, k, weights)
    print(result)
}

/*

    Необходимо перенести арбузы из одного места в другое. Можно нести не более двух арбузов одновременно. Кроме того, нельзя носить арбузы весом более k килограмм. Определите за какое минимальное количество раз возможно отнести все арбузы.

    Формат ввода
    В первой строке записано два целых числа n и k. 
    n — количество арбузов, которые нужно перенести
    k — грузоподъемность (нельзя нести арбузы, которые весят больше k)
    Во второй строке записано n целых чисел, обозначающих веса арбузов.

    Формат вывода
    Определите за сколько раз можно перенести все арбузы, или выведите слово Impossible, если невозможно перенести все арбузы

    Пример 1
    Ввод
    4 4
    3 2 3 1
    Вывод
    3

    Пример 2
    Ввод
    4 2
    3 2 1 2
    Вывод
    Impossible

*/