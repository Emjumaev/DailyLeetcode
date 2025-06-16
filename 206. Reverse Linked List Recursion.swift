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
    func reverseList(_ head: ListNode?) -> ListNode? {
        // base case: empty list or single node
        if head == nil || head!.next == nil {
            return head
        }

        // reverse the rest of the list
        let newHead = reverseList(head!.next)

        // reverse current node's pointer
        head!.next!.next = head
        head!.next = nil

        return newHead
    }
}

// Time: O(n)
// Space: O(n)
