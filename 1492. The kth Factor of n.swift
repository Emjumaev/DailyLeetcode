class Solution {
    func kthFactor(_ n: Int, _ k: Int) -> Int {
        var k = k
        for i in 1...n {
            if n % i == 0 {
                k -= 1
                if k == 0 {
                    return i
                }
            }
        }
        return -1
    }
}
