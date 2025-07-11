class Solution {
    func addDigits(_ num: Int) -> Int {
        var number = num

        while(number >= 10) {
            number = sumDigits(num: number)
        }
        
        return number
    }

    func sumDigits(num: Int) -> Int {
        var number = num
        var sum = 0
        while(number != 0) {
            let remainder = number % 10
            sum += remainder
            number = number / 10
        }
        return sum
    }
}

/* Optimal solution
 func addDigits(_ num: Int) -> Int {
     if num == 0 { return 0 }
     return 1 + (num - 1) % 9
 }
 */
