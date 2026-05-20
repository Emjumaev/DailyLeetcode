class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            if isPalindrome(str: word) {
                return word
            }
        }

        return ""
    }

    func isPalindrome(str: String) -> Bool {
        var arr = Array(str)

        var left = 0
        var right = arr.count - 1

        while(left < right) {
            if arr[left] != arr[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}
