class Solution {
    func isUgly(_ n: Int) -> Bool {
        var num = n

        while(num > 1) {
            if num % 2 == 0 {
                num /= 2
            } else if num % 3 == 0 {
                num /= 3
            } else if num % 5 == 0 {
                num /= 5
            } else {
                break
            }
        }
        return num == 1
    }
}
