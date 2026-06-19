class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        let n = 9

        for i in 0..<n {
            var hashSet = Set<Character>()
            for j in 0..<n {
                if board[i][j] == "." { continue }

                if hashSet.contains(board[i][j]) {
                    return false
                } else {
                    hashSet.insert(board[i][j])
                }
            }
        }

        for j in 0..<n{
            var hashSet = Set<Character>()
            for i in 0..<n {
                if board[i][j] == "." { continue }

                if hashSet.contains(board[i][j]) {
                    return false
                } else {
                    hashSet.insert(board[i][j])
                }
            }
        }

        var i = 0
        while(i < n) {
            var j = 0
            while(j < n) {
                var hashSet = Set<Character>()
                for a in 0...2 {
                    for b in 0...2 {
                        if board[i + a][j + b] == "." { continue }

                        if hashSet.contains(board[i + a][j + b]) {
                            return false
                        } else {
                            hashSet.insert(board[i + a][j + b])
                        }
                    }
                }
                j += 3
            }
            i += 3
        }

        return true
    }
}
