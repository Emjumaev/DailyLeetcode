class Solution {
    func smallestNumber(_ pattern: String) -> String {
        var pattern = Array(pattern)
        var stack = [Int]()
        var res = ""


        for i in 0...pattern.count {
            stack.append(i + 1)

            if i == pattern.count || pattern[i] == "I" {
                while(!stack.isEmpty) {
                    res += String(stack.removeLast())
                }
            }
        }

        return res

    }
}
