class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var nums = nums.sorted()

        for i in 0..<nums.count {
            let a = nums[i]
            if a > 0 {
                break
            }
            if i > 0 && a == nums[i - 1] {
                continue
            }

            var l = i + 1, r = nums.count - 1
            while l < r {
                let threeSum = a + nums[l] + nums[r]
                if threeSum > 0 {
                    r -= 1
                } else if threeSum < 0 {
                    l += 1
                } else {
                    res.append([a, nums[l], nums[r]])
                    l += 1
                    r -= 1
                    while l < r && nums[l] == nums[l - 1] {
                        l += 1
                    }
                }
            }
        }
        return res
    }
}
