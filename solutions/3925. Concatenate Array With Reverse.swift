class Solution {
    func concatWithReverse(_ nums: [Int]) -> [Int] {
        var nums = nums
        var count = nums.count - 1

        while(count >= 0) {
            nums.append(nums[count])
            count -= 1
        }

        return nums
    }
}
