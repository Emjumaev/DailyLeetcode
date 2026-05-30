class Solution {
    func countPartitions(_ nums: [Int]) -> Int {
        var sum = 0
        var res = 0

        for num in nums {
            sum += num
        }

        var leftSum = 0
        var rightSum = sum

        for i in 0..<(nums.count - 1) {
            let num = nums[i]

            leftSum += num
            rightSum -= num

            if abs(leftSum - rightSum) % 2 == 0 {
                res += 1
            }
        }

        return res
    }
}
