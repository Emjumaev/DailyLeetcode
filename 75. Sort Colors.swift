class Solution {
    func sortColors(_ nums: inout [Int]) {
        // Step 1: Count the occurrences of each number
        var count = [0, 0, 0]
        
        for num in nums {
            count[num] += 1
        }

        // Step 2: Overwrite the array with the sorted order
        var index = 0
        for i in 0..<3 {
            for _ in 0..<count[i] {
                nums[index] = i
                index += 1
            }
        }
    }
}

