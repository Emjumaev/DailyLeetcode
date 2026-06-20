class Solution {

    func myPow(_ x: Double, _ n: Int) -> Double {
        if n >= 0 {
            return findPower(x, n)
        } else {
            return 1 / findPower(x, -n)
        }
    }

    func findPower(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }

        if n == 1 {
            return x
        }

        if n % 2 == 0 {
            let halfPower = findPower(x, n / 2)
            return halfPower * halfPower
        } else {
            return x * findPower(x, n - 1)
        }
    }
}
