class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var numbers = nums

        for (index, value) in numbers.enumerated() {
            sum += value
            numbers[index] = sum
        }

        return numbers
    }
}
