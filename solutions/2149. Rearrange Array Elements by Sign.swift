class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var negativeNums = [Int]()
        var positiveNums = [Int]()
        var res = [Int]()

        for num in nums {
            if num < 0 {
                negativeNums.append(num)
            } else {
                positiveNums.append(num)
            }
        }

        var i = 0
        while(i < nums.count / 2) {
            res.append(positiveNums[i])
            res.append(negativeNums[i])
            i += 1
        }

        return res
    }
}
