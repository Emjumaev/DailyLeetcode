class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var maxCount = 0
        var res = 0

        // Constructing dictionary
        for i in nums {
            if dict[i] == nil {
                dict[i] = 1
            } else {
                dict[i] = dict[i]! + 1
            }
        }

        for pair in dict {
            if pair.value > maxCount {
                res = pair.key
                maxCount = pair.value
            }
        }

        return res
    }
}
