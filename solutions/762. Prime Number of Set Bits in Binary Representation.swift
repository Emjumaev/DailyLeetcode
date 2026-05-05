class Solution {
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var mySet = Set<Int>()
        mySet = [2, 3, 5, 7, 11, 13, 17, 19]
        var res = 0

        for i in left...right {
            let count = countBinary(i)
            if mySet.contains(count) {
                res += 1
            }
        }
        return res
    }

    func countBinary(_ num: Int) -> Int {
        var count = 0
        var num = num
        while(num != 0) {
            if num & 1 == 1 {
                count += 1
            }
            num = num >> 1
        }
        return count
    }
}
