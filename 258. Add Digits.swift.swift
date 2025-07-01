class Solution {
    func addDigits(_ num: Int) -> Int {
        var num = num

        while(num > 9) {
            num = calculateSum(num)
        }

        return num
    }

    func calculateSum(_ number: Int) -> Int {
        var num = number
        var sum = 0
        while(num > 0) {
            sum = sum + (num % 10)
            num = num / 10
        }
        return sum
    }
}
