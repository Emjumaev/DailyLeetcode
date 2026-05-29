class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var res = 0

        for num in nums {
            if !(num % 3 == 0) {
                res += 1
            }
        }

        return res
    }
}
