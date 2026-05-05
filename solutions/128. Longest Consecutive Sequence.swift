class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numsSet = Set(nums)
        var result = 0

        for num in numsSet {
            if !numsSet.contains(num - 1) {
                var length = 1
                while(numsSet.contains(num + length)) {
                    length += 1
                }
                result = max(result, length)
            }
        }
        return result
    }
}

