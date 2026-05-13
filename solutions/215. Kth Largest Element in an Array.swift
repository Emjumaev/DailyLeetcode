class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var maxHeap = Heap(nums)

        var popedItem: Int = 0
        for _ in 1...k {
            popedItem = maxHeap.popMax()!
        }

        return popedItem
    }
}

// Time Complexity: O(n) + k * O(log n)
// Space: O(n)
