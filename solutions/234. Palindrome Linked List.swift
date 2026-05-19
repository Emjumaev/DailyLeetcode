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
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var cur = head
        var arr = [Int]()

        while(cur != nil) {
            arr.append(cur!.val)
            cur = cur?.next
        }

        var left = 0
        var right = arr.count - 1

        while(left < right) {
            if arr[left] != arr[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}
