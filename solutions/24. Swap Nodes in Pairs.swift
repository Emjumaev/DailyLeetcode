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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { return head }
        var cur = head?.next
        var prev = head
        var lastNode: ListNode? = nil

        var res = head?.next

        while(cur != nil) {
            prev?.next = cur?.next
            let temp = cur?.next
            cur?.next = prev
            if lastNode != nil {
                lastNode?.next = cur
            }
            lastNode = prev

            prev = temp
            cur = temp?.next
        }

        return res
    }
}
