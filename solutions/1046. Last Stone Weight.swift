class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        // heapify
        var heap = Heap(stones)

        while(heap.count > 1) {
            let pop1 = heap.popMax()!
            let pop2 = heap.popMax()!

            if pop1 != pop2 {
                heap.insert(pop1 - pop2)
            }
        }

        if heap.isEmpty {
            return 0
        } else {
            return heap.max!
        }
    }
}

// Time: O(n * log n)
// Space: O(n)
