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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil { return nil }

        var dummy: ListNode? = ListNode(0)
        dummy?.next = head

        var cur = dummy?.next
        var prev: ListNode? = dummy

        while(cur != nil) {
            if cur!.val == val {
                prev?.next = cur?.next
                cur = cur?.next
            } else {
                prev = cur
                cur = cur?.next
            }
        }

        return dummy?.next
    }
}
