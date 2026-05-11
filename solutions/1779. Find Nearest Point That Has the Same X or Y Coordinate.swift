class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var smallest = Int.max
        var res = -1

        for (i, point) in points.enumerated() {
            if x == point[0] || y == point[1] {
                let distance = abs(x - point[0]) + abs(y - point[1])
                if distance < smallest {
                    smallest = distance
                    res = i
                }
            }
        }
        return res
    }
}
