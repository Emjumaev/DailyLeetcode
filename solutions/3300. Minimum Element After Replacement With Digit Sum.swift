class Solution {
    func minElement(_ nums: [Int]) -> Int {
        var res = Int.max

        for num in nums {
            res = min(res, findSumDigits(num))
        }

        return res
    }

    func findSumDigits(_ n: Int) -> Int {
        var n = n
        var res = 0

        while(n != 0) {
            res += (n % 10)
            n = n / 10
        }

        return res
    }
}
