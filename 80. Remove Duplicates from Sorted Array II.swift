class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var left = 1
        var right = 1
        var count = 1

        while(right < nums.count) {
            
            
            if nums[right] == nums[right - 1] {
                count += 1
            } else {
                count = 1
            }

            if count <= 2 {
                nums[left] = nums[right]
                left += 1
            }
            
            right += 1
        }

        return left
    }
}
