class NumMatrix {

    var matrix = [[Int]]()
    var prefixMatrix = [[Int]]()

    init(_ matrix: [[Int]]) {
        for arr in matrix {
            var sum = 0
            var res = [Int]()
            for i in arr {
                sum += i
                res.append(sum)
            }
            prefixMatrix.append(res)
        }
        self.matrix = matrix
    }

    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var res = 0
        for row in row1...row2 {
            res += prefixMatrix[row][col2] - prefixMatrix[row][col1] + matrix[row][col1]
        }

        return res
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
