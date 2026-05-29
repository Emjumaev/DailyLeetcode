class Solution {
    func minimumPairRemoval(_ nums: [Int]) -> Int {
        var nums = nums
        var res = 0

        while(!isAscending(nums)) {
            var pair = [0, 1]
            var minPair = Int.max
            for i in 1...nums.count - 1 {
                if (nums[i] + nums[i - 1]) < minPair {
                    minPair = nums[i] + nums[i - 1]
                    pair = [i - 1, i]
                }
            }

            nums.remove(at: pair[0])
            nums.remove(at: pair[0])
            nums.insert(minPair, at: pair[0])
            res += 1
        }

        return res
    }

    func isAscending(_ nums: [Int]) -> Bool {
        if nums.count == 1 { return true }
        for i in 1...nums.count - 1 {
            if nums[i - 1] > nums[i] {
                return false
            }
        }
        return true
    }
}
