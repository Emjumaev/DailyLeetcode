class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charArr = [Character]()

        for char in s {
            let asciiVal = char.asciiValue!
            if asciiVal >= 65 && asciiVal <= 90 {
                charArr.append(Character(UnicodeScalar(asciiVal + 32)))
            }

            if asciiVal >= 97 && asciiVal <= 122 || asciiVal >= 48 && asciiVal <= 57 {
                charArr.append(char)
            }
        }

        var left = 0
        var right = charArr.count - 1
        while(left <= right) {
            if charArr[left] != charArr[right] { return false }
            left += 1
            right -= 1
        }

        return true
    }
}
