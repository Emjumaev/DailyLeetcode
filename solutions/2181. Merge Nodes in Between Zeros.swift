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
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var cur = head?.next
        var sum = 0
        var dummy: ListNode? = ListNode(0)
        var curDummy = dummy

        while(cur != nil) {
            if cur!.val == 0 {
                curDummy?.next = ListNode(sum)
                curDummy = curDummy?.next
                sum = 0
            }
            sum += cur!.val
            cur = cur?.next
        }

        return dummy?.next
    }
}
