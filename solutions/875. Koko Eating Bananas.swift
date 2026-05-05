/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var minSpeed = 1
        var maxSpeed = piles.max()!
        var result = 0
    
        while(minSpeed <= maxSpeed) {
            var speed = (minSpeed + maxSpeed) / 2
            var totalHours = 0

            for pile in piles {
                let hoursPerPile = Int(ceil(Double(pile) / Double(speed)))
                totalHours += hoursPerPile
            }

            if totalHours <= h {
                result = speed
                maxSpeed = speed - 1
            } else {
                minSpeed = speed + 1
            }
        }
        return result
    }
}
