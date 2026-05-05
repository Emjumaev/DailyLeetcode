class Solution {
    func romanToInt(_ s: String) -> Int {
        var string = s.reversed()
        var result: Int = 0
        var lastDigit: Int = 0

        for i in string {
            var digit = convertToInt(char: i)
            if lastDigit > digit {
                digit = digit * (-1)
            }
            result += digit
            lastDigit = digit
        }

        return result
    }

    func convertToInt(char: Character) -> Int {
        switch char {
            case "I":
                return 1
            case "V":
                return 5
            case "X":
                return 10
            case "L":
                return 50
            case "C":
                return 100
            case "D":
                return 500
            case "M":
                return 1000
            default:
                return 0
        }
    }
}
