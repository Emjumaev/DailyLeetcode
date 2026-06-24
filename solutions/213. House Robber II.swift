class Solution {
    func rob(_ nums: [Int]) -> Int {

        var dict = [Int: Int]()

        func dfs(_ i: Int, _ canRobeLast: Bool) -> Int {
            if i >= nums.count { return 0 }

            if canRobeLast == false && i == nums.count - 1 { return 0 }

            if dict[i] == nil {
                dict[i] =  max(dfs(i + 1, canRobeLast), nums[i] + dfs(i + 2, canRobeLast))
            }

            return dict[i]!
        }

        let r1 = dfs(1, true)
        dict = [:]
        let r2 = nums[0] + dfs(2, false)

        return max(r1, r2)
    }

}
