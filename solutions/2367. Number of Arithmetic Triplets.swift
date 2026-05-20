class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var set = Set(nums)
        var res = 0

        for num in nums {
            if set.contains(num + diff) && set.contains(num + 2 * diff) {
                res += 1
            }
        }

        return res
    }
}
