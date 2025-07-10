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
    func reorderList(_ head: ListNode?) {
        var nodes = [ListNode?]()
        var cur = head

        while(cur != nil) {
            nodes.append(cur)
            cur = cur?.next
        }

        var i = 0
        var j = nodes.count - 1

        while(i < j) {
            nodes[i]?.next = nodes[j]
            i += 1

            nodes[j]?.next = nodes[i]
            j -= 1
        }
        nodes[i]?.next = nil
    }
}
