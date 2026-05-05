class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var res = 1

        for i in nums {
            if i < 0 {
                res *= -1
            } else if i == 0 {
                return 0
            }
        }
        
        return res
    }
}
