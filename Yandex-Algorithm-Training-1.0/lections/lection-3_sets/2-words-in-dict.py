# Дан словарь из N слов, длина каждого не провосходит K
#
# В записи каждого из M слов текста (каждое длиной до K)
# Может быть пропущена одна буква. Для каждого слова
# сказать, входит ли оно (возможно, с одной пропущенной буквой), в словарь

def wordsindict(dictionary, text):
    goodwords = set(dictionary)
    for word in dictionary:
        for delpos in range(len(word)):
            goodwords.add(word[:delpos] + word[delpos+1:])
    ans = []
    for word in text:
        ans.append(word in goodwords)
    return ans