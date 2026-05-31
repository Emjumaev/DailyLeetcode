class Solution {
    func decodeString(_ s: String) -> String {
        var stack = [String]()

        for char in s {
            if char == "]" {
                var temp = ""
                while(stack.last! != "[") {
                    temp = stack.popLast()! + temp
                }
                stack.popLast()

                var countStr = ""
                var digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

                while(stack.last != nil && digits.contains(stack.last!)) {
                    countStr = stack.popLast()! + countStr
                }
                var count = Int(countStr) ?? 0

                var res = ""
                while(count > 0) {
                    res += temp
                    count -= 1
                }
                
                stack.append(res)
            } else {
                stack.append(String(char))
            }
        }

        return stack.joined()
    }
}
