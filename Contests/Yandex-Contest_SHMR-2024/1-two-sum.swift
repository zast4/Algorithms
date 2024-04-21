if let input = readLine() {
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    if numbers.count == 3 {
        let a = numbers[0], b = numbers[1], c = numbers[2]
        if a + b == c || a + c == b || b + c == a {
            print("YES")
        } else {
            print("NO")
        }
    } else {
        print("NO")
    }
}

/*
    Проверьте, что из трёх чисел можно выбрать два, сумма которых будет равна третьему.

    Формат ввода
    Вводится три целых числа, разделенных пробелом. 

    Формат вывода
    Выведите YES, если можно выбрать два числа, в сумме равных оставшемуся, и NO в противном случае.

    Пример 1
    Ввод
    3 5 2
    Вывод
    YES

    Пример 2
    Ввод
    2 2 5
    Вывод
    NO

    Пример 3
    Ввод
    2 2 4
    Вывод
    YES
*/