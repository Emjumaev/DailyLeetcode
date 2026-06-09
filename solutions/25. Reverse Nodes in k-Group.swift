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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var cur = head
        var count = 0
        var headK = head
        var res: ListNode? = nil
        var prevTail: ListNode? = nil

        while cur != nil {
            count += 1
            let temp = cur?.next

            if count == k {
                var curK = headK
                var prevK: ListNode? = nil
                var i = k
                while i != 0 {
                    let t = curK?.next
                    curK?.next = prevK
                    prevK = curK
                    curK = t
                    i -= 1
                }

                if res == nil {
                    res = prevK
                } else {
                    prevTail?.next = prevK
                }
                prevTail = headK
                headK?.next = temp
                headK = temp
                count = 0
            }
            cur = temp
        }

        return res ?? head
    }
}
