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
        
        if count == n {
            return head?.next
        }

        var i = 0
        var target = count - n - 1

        cur = head
        while(i < target) {
            cur = cur?.next
            i += 1
        }
        
        cur?.next = cur?.next?.next

        return head
    }
}
