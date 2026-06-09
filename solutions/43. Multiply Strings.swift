class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" { return "0" }
        let arr1 = Array(num1)
        let arr2 = Array(num2)

        var results = [String]()
        var addition = ""

        for char1 in arr1.reversed() {
            var carry = 0
            var res = ""
            for char2 in arr2.reversed() {
                let digit1 = Int(String(char1))!
                let digit2 = Int(String(char2))!

                let multiplication = digit1 * digit2 + carry
                let digit = multiplication % 10
                carry = multiplication / 10
                res = "\(digit)" + res
            }

            if carry != 0 {
                res = "\(carry)" + res
            }

            if res != "0" {
                res += addition
            }

            addition += "0"

            results.append(res)
        }


        var res = ""
        for num in results {
            res = addStrings(res, num)
        }

        return res
    }

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
