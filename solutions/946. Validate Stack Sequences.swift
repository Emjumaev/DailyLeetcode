class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {

        var stack = [Int]()

        var i = 0
        for push in pushed {
            stack.append(push)

            while(!stack.isEmpty && stack.last! == popped[i]) {
                stack.popLast()
                i += 1
            }
        }

        while(!stack.isEmpty) {
            let pop = stack.popLast()
            if pop != popped[i] {
                return false
            }
            i += 1
        }

        return true
    }
}
