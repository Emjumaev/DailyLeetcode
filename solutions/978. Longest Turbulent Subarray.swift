class Solution {
    func maxTurbulenceSize(_ arr: [Int]) -> Int {
        if arr.count == 1 {
            return 1
        }

        var left = 0
        var right = 1
        var lastComparison = -1
        var res = 0

        while(right < arr.count) {
            if arr[right] != arr[right - 1] {
                let currentComparison = arr[right] > arr[right - 1] ? 1 : 0
                if currentComparison == lastComparison {
                    res = max(res, right - left)
                    left = right - 1
                    lastComparison = -1
                    continue
                }
                lastComparison = currentComparison
            } else {
                res = max(res, right - left)
                left = right
            }
            right += 1
        }

        res = max(res, right - left)

        return res
    }
}
