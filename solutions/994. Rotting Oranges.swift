class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid

        var queue = [Pair]()
        var fresh = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    fresh += 1
                }

                if grid[i][j] == 2 {
                    queue.append(Pair(i, j))
                }
            }
        }

        var time = 0

        while(fresh > 0 && !queue.isEmpty) {
            time += 1

            var size = queue.count

            for _ in 0..<size {
                let pair = queue.removeFirst()

                let r = pair.i
                let c = pair.j

                let directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]

                for direction in directions {
                    let newRow = direction[0] + r
                    let newCol = direction[1] + c

                    if newRow >= 0 && newCol >= 0 && newRow < grid.count  && newCol < grid[0].count
                    && grid[newRow][newCol] == 1 {
                        fresh -= 1
                        grid[newRow][newCol] = 2
                        queue.append(Pair(newRow, newCol))
                    }
                }
            }
        }

        return fresh == 0 ? time : -1
    }

    struct Pair {
        let i: Int
        let j: Int

        init(_ i: Int, _ j: Int) {
            self.i = i
            self.j = j
        }
    }
}
