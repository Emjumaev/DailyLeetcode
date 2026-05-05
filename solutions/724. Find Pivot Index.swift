class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sum = 0
        var leftSum = 0
        var rightSum: Int

        for i in nums {
            sum += i
        }
        
        for i in 0...nums.count - 1 {
            rightSum = sum - nums[i] - leftSum
            if rightSum == leftSum {
                return i
            }
            leftSum += nums[i]
        }
        return -1
    }
}
