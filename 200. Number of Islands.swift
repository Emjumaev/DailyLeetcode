class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid

        var res = 0
        var rowCount = grid.count
        var colCount = grid[0].count

        func dfs(_ row: Int, _ col: Int) {
            if row < 0 || col < 0 || row == rowCount || col == colCount || grid[row][col] == "0" {
                return
            }

            grid[row][col] = "0"

            dfs(row - 1, col)
            dfs(row + 1, col)
            dfs(row, col - 1)
            dfs(row, col + 1)
        }

        for row in 0..<rowCount {
            for col in 0..<colCount {
                if grid[row][col] == "1" {
                    dfs(row, col)
                    res += 1
                }
            }
        }

        return res
    }
}
