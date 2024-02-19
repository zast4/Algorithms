class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var cols = [Set<Character>](repeating: Set<Character>(), count: 9)
        var rows = [Set<Character>](repeating: Set<Character>(), count: 9)
        var squares = [Set<Character>](repeating: Set<Character>(), count: 9)
        
        for r in 0 ..< 9 {
            for c in 0 ..< 9 {
                if board[r][c] == "." {
                    continue
                }
                if rows[r].contains(board[r][c]) ||
                    cols[c].contains(board[r][c]) ||
                    squares[3 * (r / 3) + (c / 3)].contains(board[r][c]) {
                    return false
                }
                rows[r].insert(board[r][c])
                cols[c].insert(board[r][c])
                squares[3 * (r / 3) + (c / 3)].insert(board[r][c])
            }
        }
        return true
    }
}

// true
print(Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]))

// false
print(Solution().isValidSudoku([["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]))