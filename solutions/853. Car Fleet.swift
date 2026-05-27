class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var dict = [Int: Int]()
        var stack = [Double]()

        for i in 0..<position.count {
            dict[position[i]] = speed[i]
        }

        let sortedArray = dict.sorted { $0.key > $1.key }

        for (key, value) in sortedArray {
            let timeToTravel = Double(target - key) / Double(value)

            if let top = stack.last {
                if timeToTravel > top {
                    stack.append(timeToTravel)
                }
            } else {
                stack.append(timeToTravel)
            }
        }

        return stack.count
    }
}
