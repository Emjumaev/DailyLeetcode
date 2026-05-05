class Solution {
    func trap(_ height: [Int]) -> Int {
        var maxLeft = [Int]()
        var maxRight = [Int]()
        
        var maxNum = 0
        for i in height {
            maxLeft.append(maxNum)
            maxNum = max(maxNum, i)
        }
        
        maxNum = 0
        for j in height.reversed() {
            maxRight.insert(maxNum, at: 0)
            maxNum = max(maxNum, j)
        }
                
        var res = 0
        for (i, v) in height.enumerated() {
            let val = min(maxRight[i], maxLeft[i]) - v
            if val > 0 {
                res += val
            }
        }

        return res
    }
}
