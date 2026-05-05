class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var num = columnNumber
        var res = ""

        while(num != 0) {
            var remainder = (num - 1) % 26
            let char = Character(UnicodeScalar(65 + remainder)!)
            res = String(char) + res
            num = (num - 1) / 26
        }

        return res
    }
}
