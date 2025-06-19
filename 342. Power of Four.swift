class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        var num = n

        while(num > 1) {
            if num % 4 == 0 {
                num = num / 4
            } else {
                return false
            }
        }
        return num == 1
    }
}
