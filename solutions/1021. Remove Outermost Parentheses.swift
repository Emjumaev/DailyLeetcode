class Solution {
    func removeOuterParentheses(_ s: String) -> String {
        var stack = [Character]()
        var res = ""

        var cur = ""
        for char in s {
            if char == "(" {

                if !stack.isEmpty {
                    cur += String(char)
                }

                stack.append(char)

            } else {
                stack.popLast()
                if stack.isEmpty {
                    res += cur
                    cur = ""
                }

                if !stack.isEmpty {
                    cur += String(char)
                }
            }
        }

        return res
    }
}
