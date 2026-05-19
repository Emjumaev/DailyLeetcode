class Solution {
    func reversePrefix(_ s: String, _ k: Int) -> String {
        var arr = Array(s)

        var left = 0
        var right = k - 1

        while(left < right) {
            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp

            left += 1
            right -= 1
        }

        return String(arr)
    }
}
