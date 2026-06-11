class Solution {
    func digitFrequencyScore(_ n: Int) -> Int {
        var hashMap = [Int: Int]()

        var n = n
        while(n > 0) {
            let digit = n % 10
            if hashMap[digit] == nil {
                hashMap[digit] = 1
            } else {
                hashMap[digit] = hashMap[digit]! + 1
            }
            n /= 10
        }

        var res = 0

        for (index, value) in hashMap {
            res += index * value
        }

        return res
    }
}
