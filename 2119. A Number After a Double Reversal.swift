class Solution {
    func isSameAfterReversals(_ num: Int) -> Bool {
        if num == 0 { return true }

        if num % 10 == 0 { return false }

        return true
    }
}
