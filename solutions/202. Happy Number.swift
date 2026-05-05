class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var res: [[Int]] = []

        func dfs(_ i: Int, _ cur: inout [Int], _ total: Int) {
            if total == target {
                res.append(cur)
                return
            }
            if i >= nums.count || total > target {
                return
            }

            cur.append(nums[i])
            dfs(i, &cur, total + nums[i])
            cur.removeLast()
            dfs(i + 1, &cur, total)
        }

        var cur: [Int] = []
        dfs(0, &cur, 0)
        return res
    }
}
