class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var i = 0
        var res = 0

        while(i < n) { // 0, 1, ... n - 1
            let val = start + 2 * i
            res = res ^ val
            i += 1
        }

        return res
    }
}
