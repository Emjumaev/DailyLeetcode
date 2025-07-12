class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        let charIndex = coordinates.index(coordinates.startIndex, offsetBy: 0)
        let numIndex = coordinates.index(coordinates.startIndex, offsetBy: 1)

        let char = coordinates[charIndex]
        let num = Int(String(coordinates[numIndex])) ?? 0

        if char == "a" || char == "c" || char == "e" || char == "g" {
            return num % 2 == 0 ? true : false
        } else {
            return num % 2 == 1 ? true : false
        }
    }
}
