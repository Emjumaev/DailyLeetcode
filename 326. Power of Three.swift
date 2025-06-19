class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        var num = n

        while(num > 1) {
            if num % 3 == 0 {
                num = num / 3
            } else {
                return false
            }
        }
        return num == 1
    }
}
