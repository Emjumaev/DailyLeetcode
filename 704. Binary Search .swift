class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        // Binary Search
        var left = 0
        var right = nums.count - 1

        while(left <= right) {
            var middle = (left + right) / 2

            if nums[middle] > target {
                right = middle - 1
            } else if nums[middle] < target {
                left = middle + 1
            } else {
                return middle
            }
        }
        return -1
    }
}
