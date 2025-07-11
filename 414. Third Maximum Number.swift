class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var firstMax: Int? = nil
        var secondMax: Int? = nil
        var thirdMax: Int? = nil

        for num in nums {
            if num == firstMax || num == secondMax || num == thirdMax {
                continue
            }

            if firstMax == nil || num > firstMax! {
                thirdMax = secondMax
                secondMax = firstMax
                firstMax = num
            } else if secondMax == nil || num > secondMax! {
                thirdMax = secondMax
                secondMax = num
            } else if thirdMax == nil || num > thirdMax! {
                thirdMax = num
            }
        }

        return thirdMax ?? firstMax!
    }
}
