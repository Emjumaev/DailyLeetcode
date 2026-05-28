class Solution {
    func removeDuplicates(_ s: String) -> String {
        var stack = [Character]()

        for char in s {
            if stack.isEmpty {
                stack.append(char)
                continue
            }

            let top = stack.last!
            if top == char {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }

        return String(stack)
    }
}
