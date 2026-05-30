class Solution {
    func gcdOfOddEvenSums(_ n: Int) -> Int {
        var n = n


        var res1 = 0
        var res2 = 0

        var num1 = 1
        var num2 = 2

        while(n != 0) {
            res1 += num1
            res2 += num2

            num1 += 2
            num2 += 2
            n -= 1
        }

        return gcd(res1, res2)
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = abs(a)
        var b = abs(b)

        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
