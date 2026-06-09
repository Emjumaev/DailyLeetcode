import Foundation

class Solution {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        let n = nums[0].count

        var hashSet = Set<Int>()

        for num in nums {
            hashSet.insert(convertToDecimal(num))
        }

        let maxNum = Int(pow(2.0, Double(n)))
        for i in 0...maxNum {
            if !hashSet.contains(i) {
                var res = String(i, radix: 2)
                if res.count != n {
                    var i = 0
                    while(i < n - res.count) {
                        res = "0" + res
                    }
                }
                return res
            }
        }

        return ""
    }

    func convertToDecimal(_ num: String) -> Int {
        var multiplier = 1
        var res = 0

        for char in num.reversed() {
            if char == "1" {
                res += multiplier
            }
            multiplier *= 2
        }

        return res
    }
}
