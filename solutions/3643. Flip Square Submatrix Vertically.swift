class Solution {
    func reverseSubmatrix(_ grid: [[Int]], _ x: Int, _ y: Int, _ k: Int) -> [[Int]] {
        var grid = grid

        var leftRow = x
        var rightRow = x + k - 1

        while(leftRow < rightRow) {

            for j in y...(y + k - 1) {
                let temp = grid[leftRow][j]
                grid[leftRow][j] = grid[rightRow][j]
                grid[rightRow][j] = temp
            }

            leftRow += 1
            rightRow -= 1
        }

        return grid
    }
}
