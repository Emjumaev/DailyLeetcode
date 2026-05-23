class Solution {
    var isDeleted: Bool = false

    func validPalindrome(_ s: String) -> Bool {
        var arr = Array(s)

        var left = 0
        var right = arr.count - 1


        while(left < right) {
            if arr[left] == arr[right] {
                left += 1
                right -= 1
            } else {
                if isDeleted { return false }
                isDeleted = true
                return validPalindrome(String(arr[(left + 1)...right])) || validPalindrome(String(arr[left...(right - 1)]))
            }
        }

        return true
    }
}
