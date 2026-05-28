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
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var prev = head
        var cur = head?.next

        while(cur != nil) {
            let middle: ListNode? = ListNode(gcd(prev!.val, cur!.val))
            prev?.next = middle
            middle?.next = cur

            prev = cur
            cur = cur?.next
        }

        return head
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        var divider = b

        while(divider >= 1) {
            if a % divider == 0 && b % divider == 0 {
                return divider
            }
            divider -= 1
        }

        return 1
    }
}
