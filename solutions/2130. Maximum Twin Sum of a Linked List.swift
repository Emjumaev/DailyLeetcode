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
    func pairSum(_ head: ListNode?) -> Int {
        // get to the middle
        var slow = head
        var fast = head

        while(fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // reverse the second half of the linked list
        var cur = slow
        var prev: ListNode? = nil
        while(cur != nil) {
            let temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
        }

        // iterate through each list and calculate pairs
        var head1 = head
        var head2 = prev
        var res = 0

        while(head2 != nil) {
            res = max(res, head1!.val + head2!.val)
            head1 = head1?.next
            head2 = head2?.next
        }

        return res
    }
}
