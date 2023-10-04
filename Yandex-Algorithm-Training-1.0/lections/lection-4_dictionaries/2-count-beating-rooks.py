def countbeatingrooks(rookcoords):  # Координаты всех ладий. N строк формата - row & col 
    def addrook(roworcol, key):
        if key not in roworcol:
            roworcol[key] = 0
        roworcol[key] += 1
    
    def countpairs(roworcol):
        pairs = 0
        for key in roworcol:
            pairs += roworcol[key] - 1
        return pairs
    
    rooksinrow = {}
    rooksincol = {}
    for row, col in rookcoords:
        addrook(rooksinrow, row) # Добавить ладью в строку на горизонтали row
        addrook(rooksincol, col) # Добавить ладью в столбец на вертикали column
    return countpairs(rooksinrow) + countpairs(rooksincol)