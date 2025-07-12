class Solution {
    func reverse(_ x: Int) -> Int {
        var a = x
        var reverse = 0
        var sign = (a > 0) ? true : false

        if a < 0 {
            a *= -1
        }

        while(a > 0) {
            reverse = reverse * 10 + a % 10
            a /= 10
        }

        if reverse > Int32.max || reverse < Int32.min {
            return 0
        }

        if sign {
            return(reverse)
        } else {
            return(-reverse)
        }
    }
}
