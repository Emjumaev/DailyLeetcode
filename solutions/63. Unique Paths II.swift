class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let n = obstacleGrid.count
        let m = obstacleGrid[0].count

        if obstacleGrid[n - 1][m - 1] == 1 { return 0 }

        var cache = [Key: Int]()

        func dfs(_ i: Int, _ j: Int) -> Int {
            if i == n || j == m { return 0 }

            if i == n - 1 && j == m - 1 { return 1 }

            if obstacleGrid[i][j] == 1 { return 0 }

            if cache[Key(i + 1, j)] == nil {
                cache[Key(i + 1, j)] = dfs(i + 1, j)
            }

            if cache[Key(i, j + 1)] == nil {
                cache[Key(i, j + 1)] = dfs(i, j + 1)
            }

            return cache[Key(i + 1, j)]! + cache[Key(i, j + 1)]!
        }

        return dfs(0, 0)
    }

    struct Key: Hashable {
        let i: Int
        let j: Int

        init(_ i: Int, _ j: Int) {
            self.i = i
            self.j = j
        }
    }

}
