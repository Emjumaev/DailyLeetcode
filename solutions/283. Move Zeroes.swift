class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0

        for (right, value) in nums.enumerated() {
            if value != 0 {
                let temp = nums[left]
                nums[left] = nums[right]
                nums[right] = temp
                left += 1
            }
        }
    }
}
