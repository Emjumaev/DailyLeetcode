class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var max = nums.count + 1
        var sum = (0 + max - 1) * max / 2

        for i in nums {
            sum -= i
        }

        return sum
    }
}
