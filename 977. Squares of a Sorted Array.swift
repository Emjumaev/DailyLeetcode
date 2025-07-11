class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var l = 0
        var r = nums.count - 1
        var res = [Int]()
        while(l <= r) {
            if nums[r] * nums[r] > nums[l] * nums[l] {
                res.append(nums[r] * nums[r])
                r -= 1
            } else {
                res.append(nums[l] * nums[l])
                l += 1
            }
        }
        return res.reversed()
    }
}

// Time: O(n)
// Memory: O(n)
