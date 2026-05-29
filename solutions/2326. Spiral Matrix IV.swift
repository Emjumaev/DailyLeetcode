/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
func buildSpiralMatrix(from arr: [Int], rows: Int, cols: Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)

    var top = 0, bottom = rows - 1
    var left = 0, right = cols - 1
    var index = 0

    while top <= bottom && left <= right {
        for c in left...right {
            matrix[top][c] = arr[index]; index += 1
        }
        top += 1

        if top <= bottom {
            for r in top...bottom {
                matrix[r][right] = arr[index]; index += 1
            }
            right -= 1
        }

        if left <= right && top <= bottom {
            for c in stride(from: right, through: left, by: -1) {
                matrix[bottom][c] = arr[index]; index += 1
            }
            bottom -= 1
        }

        if top <= bottom && left <= right {
            for r in stride(from: bottom, through: top, by: -1) {
                matrix[r][left] = arr[index]; index += 1
            }
            left += 1
        }
    }

    return matrix
}

class Solution {
    func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
        var arr = [Int]()
        var cur = head

        while(cur != nil) {
            arr.append(cur!.val)
            cur = cur?.next
        }

        while arr.count != n * m {
            arr.append(-1)
        }


        return buildSpiralMatrix(from: arr, rows: m, cols: n)
    }
}
