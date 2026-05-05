class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var i = 0
        var map = [Int: Int]()
        while(i <= nums.count - 1) {
            if map[nums[i]] == nil {
                let mapIndex = target - nums[i]
                map[mapIndex] = i
            } else {
                return [i, map[nums[i]]!]
            }
            i += 1
        }
        return []
    }
}

// Time: O(n)
// Space: O(n)
