class Solution {
    func minLength(_ s: String) -> Int {
        var stack = [Character]()

        for char in s {
            stack.append(char)

            var last2 = ""
            if stack.count >= 1 {
                last2 = String(stack[stack.count - 1]) + last2
            }

            if stack.count >= 2 {
                last2 = String(stack[stack.count - 2]) + last2
            }

            if last2 == "AB" || last2 == "CD" {
                stack.removeLast()
                stack.removeLast()
            }
        }

        return stack.count
    }
}
