class Solution {
    func minLengthAfterRemovals(_ s: String) -> Int {
        var stack = [Character]()

        for char in s {
            if stack.isEmpty {
                stack.append(char)
                continue
            }

            let top = stack.last!

            if top != char {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        }

        return stack.count
    }
}
