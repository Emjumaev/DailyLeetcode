class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack = [Character]()
        var res = 0

        for char in s {
            if char == "(" {
                stack.append(char)
                res = max(res, stack.count)
            } else if char == ")" {
                stack.removeLast()
            }
        }

        return res
    }
}
