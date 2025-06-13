class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums

        if nums.count <= 1 {
            return nums
        }

        for i in 1...nums.count - 1 {
            var j = i - 1
            while(j >= 0 && nums[j + 1] < nums[j]) {
                let temp = nums[j + 1]
                nums[j + 1] = nums[j]
                nums[j] = temp
                j -= 1
            }
        }
        return nums
    }
}
