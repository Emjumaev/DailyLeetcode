class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0
        var res = 0

        for num in nums {
            sum += num
        }

        while(sum % k != 0) {
            sum -= 1
            res += 1
        }

        return res
    }
}
