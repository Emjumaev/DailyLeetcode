class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var res = 0
        var current = 0

        for num in nums {
            if num == 1 {
                current += 1
            } else {
                current = 0
            }
            res = max(res, current)
        }

        return res
    }
}

/*

Time: O(n)
Space: O(1)

*/
