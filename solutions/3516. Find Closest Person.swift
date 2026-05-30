class Solution {
    func findClosest(_ x: Int, _ y: Int, _ z: Int) -> Int {
        let distance1 = abs(x - z)
        let distance2 = abs(y - z)

        if distance1 == distance2 { return 0 }

        return distance1 > distance2 ? 2 : 1
    }
}
