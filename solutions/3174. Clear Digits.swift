class Solution {
    func clearDigits(_ s: String) -> String {
        var stack = [Character]()

        let digits: [Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

        for char in s {
            if digits.contains(char) {
                if stack.last == nil || digits.contains(stack.last!) {
                    stack.append(char)
                } else {
                    stack.popLast()
                }
            } else {
                stack.append(char)
            }
        }

        return String(stack)
    }
}
