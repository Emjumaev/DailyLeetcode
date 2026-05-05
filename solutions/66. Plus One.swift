class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var i = digits.count - 1
        var extra = 1


        while(i >= 0) {
            var cur = Int(digits[i])
            var sum = cur + extra
            digits[i] = sum % 10
            extra = sum / 10
            i -= 1
        }

        if extra != 0 {
            digits.insert(extra, at: 0)
        }

        return digits
    }
}
