class Solution {
    func pivotInteger(_ n: Int) -> Int {
        var rightSum = 0
        var leftSum = (1 + n + 1) * (n + 1) / 2

        var cur = n

        while(leftSum > rightSum) {
            rightSum += cur
            leftSum -= (cur + 1)

            if leftSum == rightSum {
                return cur
            }

            cur -= 1
        }

        return -1
    }
}
