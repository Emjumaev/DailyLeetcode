class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var prices = prices

        for (index, value) in prices.enumerated() {
            var discount = 0
            var j = index + 1
            while(j < prices.count) {
                if prices[j] <= value {
                    discount = prices[j]
                    break
                }
                j += 1
            }
            prices[index] = value - discount
        }

        return prices
    }
}
