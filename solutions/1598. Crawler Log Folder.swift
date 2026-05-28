class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var stack = [String]()

        for log in logs {
            if log == "../" {
                stack.popLast()
            } else if log != "./" {
                stack.append(log)
            }
        }

        return stack.count
    }
}
