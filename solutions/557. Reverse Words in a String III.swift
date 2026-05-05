class Solution {
    func reverseWords(_ s: String) -> String {
        var result = ""
        var reverseWord = ""

        for char in s {
            if char == " " {
                result += reverseWord
                result += " "
                reverseWord = ""
                continue
            }

            reverseWord = String(char) + reverseWord
        }
        
        result += reverseWord
        
        return result
    }
}
