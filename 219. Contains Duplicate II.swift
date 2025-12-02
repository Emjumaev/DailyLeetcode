class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var mySet = Set<Int>()
        if k < 1 {
            return false
        }
        for i in 0...k - 1 {
            if i >= nums.count {
                return false
            }
            if mySet.contains(nums[i]) {
                return true
            } else {
                mySet.insert(nums[i])
            }
        }

        var left = 0
        var right = k - 1

        while(right < nums.count - 1) {
            right += 1
            if mySet.contains(nums[right]) {
                return true
            } else {
                mySet.insert(nums[right])
                mySet.remove(nums[left])
                left += 1
            }
        }

        return false
    }
}
