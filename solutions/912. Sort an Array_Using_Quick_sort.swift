class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        quickSort(arr: &arr, s: 0, e: nums.count - 1)
        return arr
    }

    func quickSort(arr: inout [Int], s: Int, e: Int) {
        if e - s <= 0 {
            return
        }

        let pivot = arr[e]
        var left = s

        for i in s..<e {
            if arr[i] <= pivot {
                arr.swapAt(left, i)
                left += 1
            }
        }

        arr.swapAt(left, e)

        quickSort(arr: &arr, s: s, e: left - 1)
        quickSort(arr: &arr, s: left + 1, e: e)
    }
}

// Time: O(n * log(n)) in average case, O(n^2) for the worst case
// Space: O(1)
