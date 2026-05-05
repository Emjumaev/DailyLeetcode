class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var i = 0
        var j = 1
        var res = 0

        while(j < prices.count) {
            if prices[j] < prices[i] {
                i = j
            }
            res = max(res, prices[j] - prices[i])
            j += 1
        }

        return res
    }
}
