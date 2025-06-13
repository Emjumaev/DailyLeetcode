class Solution {
    func fib(_ n: Int) -> Int {
        var n0 = 0
        var n1 = 1

        if n <= 0 {
            return n0
        }

        var i = 1
        while(n > i) {
            let temp = n0
            n0 = n1
            n1 = temp + n1
            i += 1
        }
        return n1
    }
}
