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
    func removeNodes(_ head: ListNode?) -> ListNode? {
        if head == nil { return nil }

        var stack = [ListNode?]()

        var cur = head
        while(cur != nil) {
            stack.append(cur)
            cur = cur?.next
        }

        var maxElement = 0
        var arr = [ListNode]()

        while(!stack.isEmpty) {
            let top = stack.last!
            if top!.val >= maxElement {
                arr.append(top!)
                maxElement = top!.val
            }
            stack.removeLast()
        }

        var dummy: ListNode? = ListNode(0)
        cur = dummy

        for node in arr.reversed() {
            cur?.next = node
            cur = cur?.next
        }

        return dummy?.next
    }
}
