class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var curSum = 0
        var res = nums[0]

        for i in nums {
            curSum += i
            res = max(res, curSum)

            if curSum < 0 {
                curSum = 0
            }
        }

        return res
    }
}
