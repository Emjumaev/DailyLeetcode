class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var ones = [Int]()

        for str in bank {
            let count = countOnes(str)
            if count != 0 {
                ones.append(count)
            }
        }

        if ones.count <= 1 { return 0 }
        
        var res = 0
        for i in 1..<ones.count {
            res += ones[i] * ones[i - 1]
        }

        return res
    }

    func countOnes(_ str: String) -> Int {
        var res = 0
        for char in str {
            if char == "1" {
                res += 1
            }
        }

        return res
    }
}
