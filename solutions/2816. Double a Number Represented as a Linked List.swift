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
    func doubleIt(_ head: ListNode?) -> ListNode? {
        // reverse linked list
        var cur = head
        var prev: ListNode? = nil

        while(cur != nil) {
            let temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
        }

        // Double the linked list
        var newHead = prev
        cur = newHead
        prev = nil
        var carry = 0
        while(cur != nil) {
            let val = (2 * cur!.val + carry) % 10
            carry = (2 * cur!.val + carry) / 10
            cur!.val = val
            prev = cur
            cur = cur?.next
        }

        if cur == nil && carry == 1 {
            prev?.next = ListNode(carry)
        }

        // reverse again
        cur = newHead
        prev = nil

        while(cur != nil) {
            let temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
        }

        return prev
    }
}
