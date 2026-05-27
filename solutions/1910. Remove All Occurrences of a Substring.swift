class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        var stack = [Character]()

        for char in s {
            stack.append(char)

            if findPart(stack, part.count) == part {
                var i = 0
                while(i < part.count) {
                    stack.popLast()
                    i += 1
                }
            }
        }

        return String(stack)
    }

    func findPart(_ stack: [Character], _ count: Int) -> String {
        var stack = stack
        var cur = ""
        var i = 0

        while(i < count) {
            if stack.isEmpty { break }
            cur = String(stack.removeLast()) + cur
            i += 1
        }

        return cur
    }
}
