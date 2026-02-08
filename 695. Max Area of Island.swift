class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var maxRow = grid.count
        var maxColumn = grid[0].count

        var maxArea = 0

        for row in 0..<maxRow {
            for col in 0..<maxColumn {
                if grid[row][col] == 1 {
                    let area = dfs(row, col)
                    maxArea = max(maxArea, area)
                }
            }
        }

        func dfs(_ row: Int, _ col: Int) -> Int {
            if row < 0 || col < 0 || row == maxRow || col == maxColumn || grid[row][col] == 0 {
                return 0
            }

            var area = 1
            grid[row][col] = 0
            
            area += dfs(row - 1, col)
            area += dfs(row + 1, col)
            area += dfs(row, col - 1)
            area += dfs(row, col + 1)

            return area
        }

        return maxArea
    }
}
