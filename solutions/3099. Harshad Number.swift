class Solution {
    func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {
        var sumOfDigits = 0
        var n = x
        while(n != 0) {
            sumOfDigits += (n % 10)
            n = n / 10
        }

        return x % sumOfDigits == 0 ? sumOfDigits : -1
    }
}
