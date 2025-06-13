import Foundation

// Insertion sort
// Starts from index 1 and insert current element to the previous sorted sub-array.
// Stable sorting keeps the order of the elements in the sorted array based on their initial order. Unstable is the reverse of that.
// Insertion sort is a stable sorting algorithm.

var arr = [5, 3, 6, 2, 9]

for i in 1...arr.count - 1 {
    var j = i - 1
    while(j >= 0 && arr[j + 1] < arr[j]) {
        let temp = arr[j + 1]
        arr[j + 1] = arr[j]
        arr[j] = temp
        j -= 1
    }
}

print(arr)

// Time Complexity: O(n^2) for the worst case and O(n) for the best case.
