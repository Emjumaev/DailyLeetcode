class Solution {
    func mirrorDistance(_ n: Int) -> Int {
        return abs(n - reverse(n))
    }

    func reverse(_ n: Int) -> Int {
        var n = n
        var res = 0
        while(n != 0) {
            res = res * 10 + n % 10
            n = n / 10
        }
        return res
    }
}
