class Solution {
    func checkPowersOfThree(_ n: Int) -> Bool {
        
        var sum = 0
        var powers = Set<Int>()

        while(sum < n) {
            var num = n - sum

            var power = 1
            while(num > 0) {
                power = power * 3
                num = num / 3
            }
            power /= 3
            
            if powers.contains(power) {
                return false
            } else {
                powers.insert(power)
            }
            sum += power
        }

        return sum == n ? true : false
    }
}
