class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        var left = weights.max() ?? 1
        var right = weights.reduce(0) { $0 + $1 }

        while(left < right) {
            let mid = (left + right) / 2
            
            var numberOfDays = 0
            var cur = 0
            var i = 0
            
            while(i < weights.count) {
                cur += weights[i]
                
                if cur > mid {
                    numberOfDays += 1
                    cur = 0
                } else if cur == mid {
                    numberOfDays += 1
                    cur = 0
                    i += 1
                } else {
                    i += 1
                }
            }
            
            if cur != 0 {
                numberOfDays += 1
            }
            
            if numberOfDays <= days {
                right = mid
            } else if numberOfDays > days  {
                left = mid + 1
            }
            
        }

        return left
    }
}
