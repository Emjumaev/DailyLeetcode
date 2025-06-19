class Solution {
    func convertToBase7(_ num: Int) -> String {
        var number = num
        var res = ""
        var isNegative = false

        if num < 0 {
            isNegative = true
            number = number * (-1)
        }

        if num == 0 {
            return "0"
        }
        
        while(number != 0) {
            let remainder = number % 7
            number = number / 7
            res = "\(remainder)" + res
        }
        
        return isNegative ? "-\(res)" : "\(res)"
    }
}
