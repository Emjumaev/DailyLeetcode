class Solution {
    func mySqrt(_ x: Int) -> Int {
        var num = x
        var left = 0
        var right = x
        var res = 0

        while(left <= right) {
            let mid = (left + right) / 2
            let midSquare = mid * mid
            if midSquare > x {
                right = mid - 1
            } else if midSquare < x {
                left = mid + 1
                res = mid
            } else {
                return mid
            }
        }

        return res
    }
}
