class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var leftPartition = [Int]()
        var rightPartition = [Int]()
        var midParition = [Int]()

        for num in nums {
            if num < pivot {
                leftPartition.append(num)
            } else if num > pivot {
                rightPartition.append(num)
            } else {
                midParition.append(pivot)
            }
        }

        return leftPartition + midParition +  rightPartition
    }
}
