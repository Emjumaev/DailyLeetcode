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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count = 0
        var cur = head
        while(cur != nil) {
            count += 1
            cur = cur?.next
        }

        if count <= 1 { return nil }

        cur = head
        var prev: ListNode? = nil
        var ind = 0

        while(cur != nil) {
            if ind == count - n {
                if prev == nil {
                    return cur?.next
                }
                prev?.next = cur?.next
                return head
            }
            prev = cur
            cur = cur?.next
            ind += 1
        }

        return head
    }
}
