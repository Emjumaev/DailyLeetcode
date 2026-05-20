class Solution {
    func minimumAverage(_ nums: [Int]) -> Double {
        var nums = nums.sorted()

        var res: Double = 50.0

        var left = 0
        var right = nums.count - 1

        while(left < right) {
            res = min(res, Double(nums[left] + nums[right]) / 2.0)

            left += 1
            right -= 1
        }

        return res
    }
}
