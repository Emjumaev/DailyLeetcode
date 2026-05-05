class Solution {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var initialSum = 0
        var res = 0

        for i in 0..<k {
            initialSum += arr[i]
        }

        if initialSum / k >= threshold {
            res += 1
        }

        var i = k
        while(i < arr.count) {
            initialSum += arr[i]
            initialSum -= arr[i - k]
            if initialSum / k >= threshold {
                res += 1
            }
            i += 1
        }

        return res
    }
}

