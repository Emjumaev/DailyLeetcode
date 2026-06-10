class Solution {
    func minPartitions(_ n: String) -> Int {
        var res = 0

        for char in n {
            let digit = Int(String(char))!
            res = max(res, digit)
        }

        return res
    }
}
