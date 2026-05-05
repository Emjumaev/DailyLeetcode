class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        
        // Check if reshape is possible
        if m * n != r * c {
            return mat
        }
        
        // Flatten the original matrix
        var flat = [Int]()
        for row in mat {
            for num in row {
                flat.append(num)
            }
        }
        
        // Fill the new reshaped matrix
        var reshaped = [[Int]]()
        for i in 0..<r {
            let start = i * c
            let end = start + c
            let newRow = Array(flat[start..<end])
            reshaped.append(newRow)
        }
        
        return reshaped
    }
}
