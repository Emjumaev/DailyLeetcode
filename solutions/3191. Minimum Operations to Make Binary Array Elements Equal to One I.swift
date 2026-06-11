class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var nums = nums

        var i = 0
        var res = 0

        while(i <= nums.count - 3) {
            if nums[i] == 0 {
                var j = i
                for _ in 1...3 {
                    if nums[j] == 1 {
                        nums[j] = 0
                    } else {
                        nums[j] = 1
                    }
                    j += 1
                }
                res += 1
            }
            i += 1
        }

        while(i < nums.count) {
            if nums[i] == 0 {
                return -1
            }
            i += 1
        }

        return res
    }
}
