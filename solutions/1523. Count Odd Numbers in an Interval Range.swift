class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        if low % 2 == 0 && high % 2 == 0 {
            return (high - low) / 2
        } else {
            return (high - low) / 2 + 1
        }
    }
}
