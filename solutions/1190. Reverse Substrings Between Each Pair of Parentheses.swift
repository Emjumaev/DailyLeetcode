class Solution {
    func reverseParentheses(_ s: String) -> String {
        var stack = [Character]()

        for char in s {
            if char == ")" {
                var temp = [Character]()
                while(stack.last! != "(") {
                    if let popItem = stack.popLast() {
                        temp.append(popItem)
                    }
                }
                stack.popLast()

                for item in temp {
                    stack.append(item)
                }
            } else {
                stack.append(char)
            }
        }

        return String(stack)
    }
}
