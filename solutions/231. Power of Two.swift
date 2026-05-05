class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var num = n

        while(num > 1) {
            if num % 2 == 0 {
                num = num / 2
            } else {
                return false
            }
        }
        return num == 1
    }
}
