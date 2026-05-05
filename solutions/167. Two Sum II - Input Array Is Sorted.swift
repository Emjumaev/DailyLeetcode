class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1
        while(i != j) {
            let sum = numbers[i] + numbers[j]
            if target > sum {
                i += 1
            } else if target < sum {
                j -= 1
            } else {
                return [i + 1, j + 1]
            }
        }
        return [0, 0]
    }
}
