class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for _ in nums {
            result.append(1)
        }

        var prefix = 1
        var i = 0
        while(i < nums.count - 1) {
            prefix *= nums[i]
            result[i + 1] = result[i + 1] * prefix
            i += 1
        }

        var postfix = 1
        var j = nums.count - 1

        while(j > 0) {
            postfix *= nums[j]
            result[j - 1] = result[j - 1] * postfix
            j -= 1
        }

        return result
    }
}
