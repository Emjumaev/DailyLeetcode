class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var n = x
        var res = 0
        
        if x < 0 {
            return false
        }

        while(n > 0) {
            res = res * 10
            let m = n % 10
            res += m
            n = n / 10
        }

        return x == res
    }
}

// Time: O(n)
// Space: O(1)
