class Solution {
    func makeGood(_ s: String) -> String {
        var stack = [Character]()

        for char in s {
            if stack.isEmpty{
                stack.append(char)
                continue
            }

            let top = stack.last!

            if top.lowercased() == char.lowercased() && top != char {
                stack.removeLast()
                continue
            }

            stack.append(char)
        }

        return String(stack)
    }
}
