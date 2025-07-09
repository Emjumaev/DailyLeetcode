class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var width = Int(Double(area).squareRoot())

        while area % width != 0 {
            width -= 1
        }

        let length = area / width
        return [length, width]
    }

}
