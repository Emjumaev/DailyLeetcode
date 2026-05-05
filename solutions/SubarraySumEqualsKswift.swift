class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var i = 0
        var count = 0

        while(i <= nums.count - 1) {
            var curSum = 0
            var j = i
            while(j <= nums.count - 1) {
                curSum += nums[j]
                if curSum == k {
                    count += 1
                }
                j += 1
            }
            i += 1
        }

        return count
    }
}
