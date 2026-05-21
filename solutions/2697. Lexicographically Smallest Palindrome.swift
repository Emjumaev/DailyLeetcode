class Solution {
    func makeSmallestPalindrome(_ s: String) -> String {
        var arr = Array(s)

        var left = 0
        var right = arr.count - 1

        while(left < right) {
            let char1 = arr[left]
            let char2 = arr[right]

            if char1 != char2 {
                if char1.asciiValue! < char2.asciiValue! {
                    arr[right] = char1
                } else {
                    arr[left] = char2
                }
            }

            left += 1
            right -= 1
        }

        return String(arr)
    }
}
