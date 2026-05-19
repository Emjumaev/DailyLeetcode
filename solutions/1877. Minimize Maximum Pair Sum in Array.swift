class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted()
        var res = 0

        var left = 0
        var right = nums.count - 1

        while(left < right) {
            let sum = sortedNums[left] + sortedNums[right]
            res = max(res, sum)
            left += 1
            right -= 1
        }

        return res
    }
}
