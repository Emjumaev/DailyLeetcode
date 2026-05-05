class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0
        for i in nums {
            res ^= i
        }
        return res
    }
}
