class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var arr1 = Array(num1)
        var arr2 = Array(num2)


        var i = arr1.count - 1
        var j = arr2.count - 1

        var carry = 0
        var res = ""

        while(i >= 0 || j >= 0) {
            var digit1 = 0
            if i >= 0 {
                digit1 = Int(String(arr1[i]))!
            }

            var digit2 = 0
            if j >= 0 {
                digit2 = Int(String(arr2[j]))!
            }

            let sum = digit1 + digit2 + carry
            carry = sum / 10
            let digit = sum % 10
            res = "\(digit)" + res

            i -= 1
            j -= 1
        }

        if carry != 0 {
            res = "\(carry)" + res
        }

        return res
    }
}
