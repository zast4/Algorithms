func maxScoreDivision(_ sequence: String, _ minLen: Int, _ maxLen: Int) -> (totalScore: Int, words: [String]?) {
    let n = sequence.count
    let chars = Array(sequence)
    var dp = [(score: Int, start: Int)](repeating: (score: -1, start: -1), count: n + 1)
    dp[0] = (score: 0, start: 0)

    for i in 1...n {
        var maxScore = -1, bestStart = -1
        for length in minLen...maxLen {
            let start = i - length
            if start < 0 { break }
            let subrange = chars[start..<i]
            let minChar = subrange.min()
            let maxChar = subrange.max()
            let wordScore = Int((maxChar?.asciiValue ?? 0) - (minChar?.asciiValue ?? 0))
            let updatedScore = dp[start].score + wordScore
            if dp[start].score != -1, updatedScore > maxScore {
                maxScore = updatedScore
                bestStart = start
            }
        }
        dp[i] = (score: maxScore, start: bestStart)
    }

    if dp[n].score == -1 {
        return (0, nil)
    }

    var totalScore = dp[n].score
    var words = [String]()
    var index = n
    while index > 0 {
        let start = dp[index].start
        let word = String(chars[start..<index])
        words.append(word)
        index = start
    }

    return (totalScore, words.reversed())
}

// Использование функции
let input = readLine()!
let parts = input.split(separator: " ").map { Int($0)! }
let n = parts[0], l = parts[1], r = parts[2]
let sequence = readLine()!

let result = maxScoreDivision(sequence, l, r)

if let words = result.words {
    print(result.totalScore)
    print(words.count)
    for word in words {
        print(word)
    }
} else {
    print("NO SOLUTION")
}


/*
    На вход поступает длинная последовательность букв английского алфавита, которую нужно разделить на слова, длина которых не меньше l и не больше r. За каждое слово дают количество очков, равное разнице максимального и минимального порядковых номеров букв по алфавиту, среди всех букв, встречающихся в слове. Например, в слове ”zadacha” максимальный порядоквый номер по алфавиту у буквы ”z”, он равен 26, а минимальный — у буквы ”a”, он равен 1. Это слово оценивается в 25 очков. А слово ”ababa” — 1 очко. Помогите определить, как надо разделить строку чтобы получить максимальное количество очков.

    Формат ввода
    В первой строке записано три целых числа: n, l, r.
    n — длина поступающей на вход строки
    l — минимальная допустимая длина слова 
    r — максимальная допустимая длина слова 
    Вторая строка содержит последовательность поступающих на вход символов, состояющую из n прописных английских букв.

    Формат вывода
    В первой строке выведите заработанное количество очков.
    Во второй строке выведите k — количество слов в получившемся делении.

    В следующих k строках выведите получившиеся в результате деления слова в том порядке, в котором они встречаются в исходной последовательности.

    Если правильных решений несколько — выведите любое из них.

    Если разделить последовательность на слова невозможно — выведите единственную строку ”NO SOLUTION”.

    Пример 1
    Ввод 
    7 2 4
    bcbdbcb
    Вывод
    4
    3
    bc
    bd
    bcb

    Пример 2
    Ввод
    6 4 5
    xyxzxy
    Вывод
    NO SOLUTION
*/