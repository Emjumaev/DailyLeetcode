class Solution {
    func countDistinctIntegers(_ nums: [Int]) -> Int {
        var nums = nums
        for i in nums {
            nums.append(reverseNum(i))
        }
        return Set(nums).count
    }
    
    func reverseNum(_ n: Int) -> Int {
        var n = n
        var reverse = 0
        while(n > 0) {
            reverse = reverse * 10 + n % 10
            n /= 10
        }
        return reverse
    }
}
