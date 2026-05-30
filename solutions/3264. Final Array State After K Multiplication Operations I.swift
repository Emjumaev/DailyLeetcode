class Solution {
    func getFinalState(_ nums: [Int], _ k: Int, _ multiplier: Int) -> [Int] {
        var k = k
        var nums = nums
        while(k != 0) {
            let i = findMinimumIndex(nums)
            nums[i] = nums[i] * multiplier
            k -= 1
        }

        return nums
    }

    func findMinimumIndex(_ nums: [Int]) -> Int {
        var i = 0

        for (index, num) in nums.enumerated() {
            if nums[i] > num {
                i = index
            }
        }
        
        return i
    }
}
