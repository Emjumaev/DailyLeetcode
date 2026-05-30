class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        var sum1 = 0
        var sum2 = 0

        for num in nums {
            sum1 += num
            sum2 += calculateSumOfDigits(num)
        }

        return abs(sum1 - sum2)
    }

    func calculateSumOfDigits(_ num: Int) -> Int {
        var num = num
        var res = 0

        while(num != 0) {
            res = res + (num % 10)
            num = num / 10
        }
        
        return res
    }
}
