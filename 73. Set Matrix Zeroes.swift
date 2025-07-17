class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var zeroIndexes = [[Int]]()
        
        let maxI = matrix.count - 1
        let maxJ = matrix[0].count - 1
        
        var i = 0
        while(i <= maxI) {
            var j = 0
            while(j <= maxJ) {
                if matrix[i][j] == 0 {
                    zeroIndexes.append([i, j])
                }
                j += 1
            }
            i += 1
        }
        
        for item in zeroIndexes {
            let indexI = item[0]
            let indexJ = item[1]
            
            var j = 0
            while(j <= maxJ) {
                matrix[indexI][j] = 0
                j += 1
            }
            
            var i = 0
            while(i <= maxI) {
                matrix[i][indexJ] = 0
                i += 1
            }

        }
    }
}
