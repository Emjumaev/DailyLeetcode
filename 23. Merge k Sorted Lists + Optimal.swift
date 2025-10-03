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
        var curLists = lists

        if curLists.isEmpty {
            return nil
        }

        while(curLists.count > 1) {
            var i = 1
            var newLists = [ListNode?]()
            while(i < curLists.count) {
                newLists.append(mergeTwoLists(curLists[i - 1], curLists[i]))
                i += 2
            }
            if curLists.count % 2 == 1 {
                newLists.append(curLists[curLists.count - 1])
            }
            curLists = newLists
        }
        
        return curLists[0]
    }

    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var head1 = list1
        var head2 = list2

        var res: ListNode? = ListNode()
        var cur = res

        while(head1 != nil && head2 != nil) {
            if head1!.val <= head2!.val {
                cur?.next = head1
                head1 = head1?.next
            } else {
                cur?.next = head2
                head2 = head2?.next
            }
            cur = cur?.next
        }

        if head1 == nil {
            cur?.next = head2
        } else {
            cur?.next = head1
        }

        return res?.next
    }
}

// Time: N log k
// Space: O(k)
// When analyzing space complexity, we care about the maximum additional memory used at any point in time, not the total memory allocated over the whole execution.
