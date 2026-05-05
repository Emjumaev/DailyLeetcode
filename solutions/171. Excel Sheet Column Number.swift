class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0

        for char in columnTitle {
            let value = Int(char.asciiValue! - 64) // 'A' = 65 in ASCII
            result = result * 26 + value
        }
        return result
    }
}
