class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var number = num
        var res = num
        var divider = 1000

        while(number > 0) {
            var x = number / divider
            if x == 6 {
                res += 3 * divider
                break
            }
            number = number % divider
            divider /= 10
        }
        return res
    }
}
