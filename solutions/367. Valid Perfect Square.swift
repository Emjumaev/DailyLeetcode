class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var l = 1
        var r = num

        while(l <= r) {
            let mid = (l + r) / 2
            if mid * mid > num {
                r = mid - 1
            } else if mid * mid < num {
                l = mid + 1
            } else {
                return true
            }
        }
        return false
    }
}
