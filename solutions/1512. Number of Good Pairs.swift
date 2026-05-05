class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        var res = 0

        for num in nums {
            if map[num] == nil {
                map[num] = 1
            } else {
                map[num] = map[num]! + 1
            }
        }

        for value in Array(map.values) {
            res = res + (value * (value - 1)) / 2
        }

        return res
    }
}
