class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = a.reversed()
        var b = b.reversed()
        var count = a.count > b.count ? a.count : b.count
        var carry = 0
        var result = ""

        for i in 0...(count - 1) {
            var charA: Int = 0
            if i < a.count {
                let indexA = a.index(a.startIndex, offsetBy: i)
                charA = Int(String(a[indexA])) ?? 0
            }

            var charB: Int = 0
            if i < b.count {
                let indexB = b.index(b.startIndex, offsetBy: i)
                charB = Int(String(b[indexB])) ?? 0
            }

            var sum = charA + charB + carry
            result = "\(sum % 2)" + result
            carry = sum / 2
        }

        if carry != 0 {
            result = "\(carry)" + result
        }
        return result
    }
}
