class Solution {
    func countDigits(_ num: Int) -> Int {
        let digits = count(num)
        var res = 0
        
        for digit in digits {
            if digit == 0 { continue }
            if num % digit == 0 {
                res += 1
            }
        }

        return res
    }

    func count(_ num: Int) -> [Int] {
        var num = num
        var res = [Int]()

        while(num != 0) {
            res.append(num % 10)
            num = num / 10
        }

        return res
    }
}
