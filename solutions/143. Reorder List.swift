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
    func reorderList(_ head: ListNode?) {
        // get to the middle
        var slow = head
        var fast = head

        while(fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // reverse from the middle
        var mid = slow?.next
        slow?.next = nil
        var prev: ListNode? = nil

        while(mid != nil) {
            let temp = mid?.next
            mid?.next = prev
            prev = mid
            mid = temp
        }

        // iterate through it.
        var cur1 = head
        var cur2 = prev

        while(cur1 != nil && cur2 != nil) {
            let temp1 = cur1?.next
            let temp2 = cur2?.next
            cur1?.next = cur2
            cur1 = temp1
            if cur1 != nil {
                cur2?.next = cur1
                cur2 = temp2
            }
        }
    }
}
