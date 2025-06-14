class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var bottomRow = 0
        var topRow = matrix.count - 1
        var bottomColumn = 0
        var topColumn = matrix[0].count - 1
        var middleRow = 0

        while(bottomRow <= topRow) {
            middleRow = (bottomRow + topRow) / 2
            
            if target < matrix[middleRow][bottomColumn] {
                topRow = middleRow - 1
            } else if target > matrix[middleRow][matrix[0].count - 1] {
                bottomRow = middleRow + 1
            } else {
                break
            }
        }

        while(bottomColumn <= topColumn) {
            var middleColumn = (bottomColumn + topColumn) / 2
            if matrix[middleRow][middleColumn] < target {
                bottomColumn = middleColumn + 1
            } else if matrix[middleRow][middleColumn] > target {
                topColumn = middleColumn - 1
            } else {
                return true
            }
        }
        return false
    }
}

// Time: O(log(m) + log(n))
// Space: O(1)
