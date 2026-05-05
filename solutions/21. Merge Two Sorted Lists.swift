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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var head: ListNode? = dummy

        var head1: ListNode? = list1
        var head2: ListNode? = list2

        while(head1 != nil && head2 != nil) {
            if head1!.val < head2!.val {
                head!.next = head1
                head1 = head1!.next
            } else {
                head!.next = head2
                head2 = head2!.next
            }
            head = head!.next
        }
        
        head!.next = head1 ?? head2

        return dummy.next
    }
}

// Time: O(n + m)
// Space: O(1)
