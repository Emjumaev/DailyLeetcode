class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = 0
        var fast = 0

        while(true) {
            slow = nums[slow]
            fast = nums[nums[fast]]

            if slow == fast {
                break
            }
        }

        var slow2 = 0

        while(true) {
            slow2 = nums[slow2]
            slow = nums[slow]

            if slow == slow2 {
                return slow
            }
        }

        return 0
    }
}
