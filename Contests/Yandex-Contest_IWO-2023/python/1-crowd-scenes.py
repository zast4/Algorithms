def min_people_days(n, m, scenes):
    scenes.sort(key=lambda x: x[0])  # Сортируем сцены по дням начала съемок
    hired_actors = [0] * n  # Список для хранения количества актеров, нанятых в каждый день

    for scene in scenes:
        l, r, x = scene
        for day in range(l-1, r):
            if hired_actors[day] < x:
                hired_actors[day] = x

    total_people_days = sum(hired_actors)

    return total_people_days

# Чтение входных данных
n, m = map(int, input().split())
scenes = [list(map(int, input().split())) for _ in range(m)]

# Вызов функции и вывод результата
result = min_people_days(n, m, scenes)
print(result)