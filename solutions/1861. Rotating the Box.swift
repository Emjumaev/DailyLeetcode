class Solution {
    func rotateTheBox(_ boxGrid: [[Character]]) -> [[Character]] {
        // 1. rotate
        var rotatedGrid = [[Character]]()
        for i in 0..<boxGrid[0].count {
            var arr = [Character]()
            for j in 0..<boxGrid.count {
                arr.append(boxGrid[j][i])
            }
            rotatedGrid.append(arr.reversed())
        }

        // 2. do gravity
        for j in 0..<rotatedGrid[0].count {
            var i = rotatedGrid.count - 1
            var k = i
            while(k >= 0) {
                let kItem = rotatedGrid[k][j]

                if kItem == "#" {
                    rotatedGrid[k][j] = "."
                    rotatedGrid[i][j] = kItem
                    i -= 1
                } else if kItem == "*" {
                    i = k - 1
                }
                k -= 1
            }
        }

        return rotatedGrid
    }
}
