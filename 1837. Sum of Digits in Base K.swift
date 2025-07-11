class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var sum = 0
        var num = n

        while(num > 0) {
            sum += num % k
            num /= k
        }

        return sum
    }
}
