class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var res = [Int]()

        var maxNum = 0
        for i in 0..<k {
            maxNum = max(maxNum, nums[i])
        }
        res.append(maxNum)

        var left = 0
        var right = k

        while(right < nums.count) {
            let leftNum = nums[left]

            // update the new max
            if leftNum == maxNum {
                let maxIndex = left + k
                var i = left + 1
                var newMax = nums[i]
                while(i < maxIndex) {
                    newMax = max(newMax, nums[i])
                    i += 1
                }

                maxNum = newMax
            }

            maxNum = max(maxNum, nums[right])
            res.append(maxNum)

            left += 1
            right += 1
        }

        return res
    }
}
