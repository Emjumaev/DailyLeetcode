class Solution {
    func rob(_ nums: [Int]) -> Int {
        var hashMap = [Int: Int]()

        func dfs(_ i: Int) -> Int {
            if i >= nums.count {
                return 0
            }

            if hashMap[i + 1] == nil  {
                hashMap[i + 1] = dfs(i + 1)
            }

            if hashMap[i + 2] == nil  {
                hashMap[i + 2] = dfs(i + 1)
            }

            return max(hashMap[i + 1]!, nums[i] + hashMap[i + 2]!)
        }

        return dfs(0)
    }
}
