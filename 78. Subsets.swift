class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {

        var result = [[Int]]()
        var subset = [Int]()

        func backtract(_ i: Int) {
            if i == nums.count {
                result.append(subset)
                return
            }

            subset.append(nums[i])
            backtract(i + 1)

            subset.removeLast()
            backtract(i + 1)
        }
        
        backtract(0)
        return result
    }
}
