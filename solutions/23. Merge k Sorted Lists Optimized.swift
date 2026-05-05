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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {

        if lists.count == 0 {
            return nil
        }

        var i = 1
        var initial: ListNode? = lists[0]
        
        // Time: O(k)
        while(i < lists.count) {
            initial = mergeTwoLinkedLists(list1: initial, list2: lists[i])
            i += 1
        }
        
        return initial
    }
    
    // Merge two linked lists into one
    func mergeTwoLinkedLists(list1: ListNode?, list2: ListNode?) -> ListNode? {
        var node1 = list1
        var node2 = list2
        let result: ListNode? = ListNode()
        var cur: ListNode? = result
        
        while(node1 != nil && node2 != nil) {
            if node1!.val < node2!.val {
                cur!.next = node1
                node1 = node1!.next
            } else {
                cur!.next = node2
                node2 = node2!.next
            }
            cur = cur!.next
        }
        
        if node1 == nil {
            cur!.next = node2
        } else {
            cur!.next = node1
        }
        return result!.next
    }
}

// Time: O(n * k)
// Space: O(1)
