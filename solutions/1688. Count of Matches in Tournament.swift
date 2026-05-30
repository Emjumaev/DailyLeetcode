class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        
        var n = n
        var res = 0

        while(n != 1) {
            res = res + n / 2
            if n % 2 == 0 {
                n = n / 2
            } else {
                n = n / 2 + 1
            }
        }

        return res
    }
}
