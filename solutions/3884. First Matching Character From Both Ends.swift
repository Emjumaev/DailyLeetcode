class Solution {
    func firstMatchingIndex(_ s: String) -> Int {
        var arr = Array(s)

        var left = 0
        var right = arr.count - 1

        while(left <= right) {
            if arr[left] == arr[right] {
                return left
            }
            left += 1
            right -= 1
        }

        return -1
    }
}
