class Solution {
    func countBits(_ n: Int) -> [Int] {
        var res = [Int]()
        for i in 0...n {
            let count = countBit(i)
            res.append(count)
        }
        return res
    }

    func countBit(_ n: Int) -> Int {
        var num = n
        var count = 0
        while(num > 0) {
            if num & 1 == 1 {
                count += 1
            }
            num = num >> 1
        }
        return count
    }
}
