class Solution {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        let nums = nums

        var maxSum = nums[0]

        var left = 0
        var right = nums.count - 1

        while(left < nums.count) {

            var i = left
            let j = right
            var curSum = 0
            while(i != j) {
                curSum += nums[i]
                maxSum = max(maxSum, curSum)
                if curSum < 0 {
                    curSum = 0
                }
                i += 1
                if i == nums.count {
                    i = 0
                }
            }

            curSum += nums[i]
            maxSum = max(maxSum, curSum)

            left += 1
            if left == 1 {
                right = 0
            } else {
                right += 1
            }
        }

        return maxSum
    }
}
