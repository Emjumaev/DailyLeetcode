class Solution {
    func countDigitOccurrences(_ nums: [Int], _ digit: Int) -> Int {
        var res = 0
        
        for num in nums {
            var num = num
            while(num != 0) {
                if num % 10 == digit {
                    res += 1
                }
                num = num / 10
            }
        }

        return res
    }
}
