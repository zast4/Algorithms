def groupwords(words):
    groups = {} # Словарь, где ключом является отсортированные буквы слова
    for word in words:
        sortedword = ''.join(sorted(word))
        if sortedword not in groups:
            groups[sortedword] = []
        groups[sortedword].append(word) # Добавляем в массив, ключом которого являются 
    ans = []                            # отсортированные буквы слова, обычное слово
    for sortedword in groups:
        ans.append(groups[sortedword])
    return ans
print(groupwords(["eat", "tea", "tan", "ate", "nat", "bat"]))