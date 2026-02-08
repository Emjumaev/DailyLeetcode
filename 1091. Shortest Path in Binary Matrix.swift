class Solution {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {

        var count = grid.count

        func bfs(_ row: Int, _ col: Int) -> Int {

            var visited = Set<Pair>()
            var queue = [Pair]()

            queue.append(Pair(0, 0))
            visited.insert(Pair(0, 0))

            var length = 1

            while(!queue.isEmpty) {
                length += 1

                let queueSize = queue.count

                for _ in 0..<queueSize {

                    let pair = queue.removeFirst()
                    let row = pair.i
                    var col = pair.j

                    let directions = [Pair(0, 1), Pair(0, -1), Pair(1, 0), Pair(-1, 0),
                        Pair(1, 1), Pair(-1, -1), Pair(1, -1), Pair(-1, 1)
                    ]

                    for direction in directions {
                        let newRow = row + direction.i
                        let newCol = col + direction.j

                        if newRow < 0 || newCol < 0 || newRow == count || newCol == count ||
                        visited.contains(Pair(newRow, newCol)) || grid[newRow][newCol] == 1 {
                            continue
                        }

                        if newRow == count - 1 && newCol == count - 1 {
                            return length
                        }

                        visited.insert(Pair(newRow, newCol))
                        queue.append(Pair(newRow, newCol))
                    }
                }
            }

            return -1
        }

        struct Pair: Hashable {
            let i: Int
            let j: Int

            init(_ i: Int, _ j: Int) {
                self.i = i
                self.j = j
            }
        }

        if grid[0][0] == 1 || grid[count-1][count-1] == 1 { return -1 }

        if count == 1 && grid[0][0] == 0 { return 1 }
        return bfs(0, 0)
    }
}
