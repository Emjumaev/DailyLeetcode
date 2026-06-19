class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var hashMap = [Int: Int]()

        for num in nums {
            if hashMap[num] == nil {
                hashMap[num] = 1
            } else {
                hashMap[num] = hashMap[num]! + 1
            }
        }

        var n = nums.count
        var res = [Int]()
        for (key, value) in hashMap {
            if Double(value) > Double(n) / 3.0 {
                res.append(key)
            }
        }

        return res
    }
}
