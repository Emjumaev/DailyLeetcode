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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {

        var cur = head?.next
        var prev = head

        while(cur != nil) {
            if cur!.val == prev!.val {
                prev?.next = cur?.next
                cur = cur?.next
            } else {
                prev = cur
                cur = cur?.next
            }
        }

        return head
    }
}
