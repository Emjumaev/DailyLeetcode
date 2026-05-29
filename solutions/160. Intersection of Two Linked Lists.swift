/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var hashSet = Set<ObjectIdentifier>()

        var curA = headA
        while(curA != nil) {
            if !hashSet.contains(ObjectIdentifier(curA!)) {
                hashSet.insert(ObjectIdentifier(curA!))
            }
            curA = curA?.next
        }

        var curB = headB
        while(curB != nil) {
            if hashSet.contains(ObjectIdentifier(curB!)) {
                return curB
            }
            curB = curB?.next
        }

        return nil
    }
}
