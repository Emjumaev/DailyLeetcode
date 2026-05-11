class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        let res = mergeSort(points)
        return Array(res[0...(k - 1)])
    }

    func mergeSort(_ points: [[Int]]) -> [[Int]] {
        if points.count <= 1 { return points }

        let leftPortion = mergeSort(Array(points[...(points.count / 2 - 1)]))
        let rightPortion = mergeSort(Array(points[(points.count / 2)...]))

        var res = [[Int]]()
        var i = 0
        var j = 0

        while(i < leftPortion.count && j < rightPortion.count) {
            let valueLeft = leftPortion[i][0] * leftPortion[i][0] + leftPortion[i][1] * leftPortion[i][1]
            let valueRight = rightPortion[j][0] * rightPortion[j][0] + rightPortion[j][1] * rightPortion[j][1]
            if valueLeft < valueRight {
                res.append(leftPortion[i])
                i += 1
            } else {
                res.append(rightPortion[j])
                j += 1
            }
        }

        res.append(contentsOf: leftPortion[i...])
        res.append(contentsOf: rightPortion[j...])

        return res
    }
}
