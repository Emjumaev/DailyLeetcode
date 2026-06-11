class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for n in nums {
            res.append(nums[n])
        }
        return res
    }
}
