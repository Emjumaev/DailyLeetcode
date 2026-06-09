class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var r = matrix.count - 1
        var c = matrix[0].count - 1

        var res = [[Int]]()

        for i in 0...c {
            var temp = [Int]()
            for j in 0...r {
                temp.append(matrix[j][i])
            }

            res.append(temp)
        }

        return res
    }
}
