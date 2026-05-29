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
    func deleteNode(_ node: ListNode?) {
        var cur = node
        var prev: ListNode? = nil

        while(cur?.next != nil) {
            cur!.val = cur!.next!.val
            prev = cur
            cur = cur?.next
        }

        prev?.next = nil
    }
}
