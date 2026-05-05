class Solution {
    func climbStairs(_ n: Int) -> Int {
        var n0 = 1
        var n1 = 1

        var i = 1
        while(n > i) {
            let temp = n1
            n1 = n0 + n1
            n0 = temp
            i += 1
        }
        return n1
    }
}

// Time: O(n)
// Space: O(1)
