class Solution {
    
    enum Direction {
        case down
        case up
        case left
        case right
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        var res = [Int]()
        
        
        var minI = 0
        var maxI = matrix.count - 1
        
        var minJ = 0
        var maxJ = matrix[0].count - 1
        
        var total = (maxI + 1) * (maxJ + 1)
        
        var direction = matrix[0].count == 1 ? Direction.down : Direction.right
        
        var i = 0
        var j = 0
        while(total > 0) {
            
            if direction == .right {
                res.append(matrix[i][j])
                print("ttt", matrix[i][j])
                j += 1
                if j == maxJ {
                    direction = .down
                    minI += 1
                }
            } else if direction == .down {
                res.append(matrix[i][j])
                i += 1
                if i == maxI {
                    direction = .left
                    maxJ -= 1
                }
            } else if direction == .left {
                res.append(matrix[i][j])
                j -= 1
                if j == minJ {
                    direction = .up
                    maxI -= 1
                }
            } else if direction == .up {
                res.append(matrix[i][j])
                i -= 1
                if i == minI {
                    direction = .right
                    minJ += 1
                }
            }
            
            total -= 1
        }
        return res
    }
}
