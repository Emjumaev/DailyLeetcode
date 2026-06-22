class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var memo = [Int: Int]()

        func minCost(_ index: Int) -> Int {
            if index >= cost.count { return 0 }
            if let cached = memo[index] { return cached }
            let result = cost[index] + min(minCost(index + 1), minCost(index + 2))
            memo[index] = result
            return result
        }

        return min(minCost(0), minCost(1))
    }
}
