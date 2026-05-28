class Solution {
    func minAddToMakeValid(_ s: String) -> Int {
        var stack = [Character]()

        for char in s {
            if stack.isEmpty {
                stack.append(char)
                continue
            }

            if char == ")" {
                if stack.last! == "(" {
                    stack.removeLast()
                } else {
                    stack.append(char)
                }
            } else {
                stack.append(char)
            }
        }

        return stack.count
    }
}
