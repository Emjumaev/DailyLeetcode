class Solution {
    func countLargestGroup(_ n: Int) -> Int {
        var hashMap = [Int: Int]()

        for num in 1...n {
            let sumOfDigit = sumOfDigits(num)
            if hashMap[sumOfDigit] == nil {
                hashMap[sumOfDigit] = 1
            } else {
                hashMap[sumOfDigit] = hashMap[sumOfDigit]! + 1
            }
        }

        var res = 0
        let max = hashMap.values.max()!
        for (ind, value) in hashMap {
            if value == max{
                res += 1
            }
        }

        return res
    }

    func sumOfDigits(_ n: Int) -> Int {
        var num = n
        var res = 0

        while(num != 0) {
            res += num % 10
            num = num / 10
        }

        return res
    }
}
