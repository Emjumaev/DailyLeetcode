class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var left = 0
        var right = 1
        var res = 0

        while(right < nums.count) {
            if nums[right] <= nums[right - 1] {
                res = max(res, right - left)
                left = right
            }

            right += 1
        }

        res = max(res, right - left)

        return res
    }
}
