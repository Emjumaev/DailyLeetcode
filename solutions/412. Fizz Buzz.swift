class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var arr = [String]()
        for number in 1...n {
            if number % 3 == 0 && number % 5 == 0 {
                arr.append("FizzBuzz")
                continue
            } else if number % 3 == 0 {
                arr.append("Fizz")
                continue
            } else if number % 5 == 0 {
                arr.append("Buzz")
                continue
            } else {
                arr.append(String(number))
            }
        }
        return arr
    }
}
