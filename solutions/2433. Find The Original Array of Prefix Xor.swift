class Solution {
    func findArray(_ pref: [Int]) -> [Int] {
        var res = [Int]()
        res.append(pref[0])

        var i = 1
        var temp = 0
        while(i < pref.count) {
            var xor = pref[i]

            temp = temp ^ res[i - 1]
            xor ^= temp

            res.append(xor)
            i += 1
        }

        return res
    }
}
