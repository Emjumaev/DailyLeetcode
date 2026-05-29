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
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var cur = list1
        var i = 0

        var left: ListNode? = nil
        var right: ListNode? = nil

        while(cur != nil) {

            if i == a {
                left = prev
            }

            if i == b {
                right = cur?.next
                break
            }

            prev = cur
            cur = cur?.next
            i += 1
        }

        var head2 = list2
        var tail2: ListNode? = nil
        var cur2 = head2

        while(cur2 != nil) {
            tail2 = cur2
            cur2 = cur2?.next
        }

        left?.next = head2
        tail2?.next = right

        return list1
    }
}
