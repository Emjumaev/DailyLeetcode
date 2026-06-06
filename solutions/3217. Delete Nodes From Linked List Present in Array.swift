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
    func modifiedList(_ nums: [Int], _ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var cur = head
        var res = cur
        var hashSet = Set(nums)

        while(cur != nil) {
            let val = cur!.val

            if hashSet.contains(val) {
                if prev == nil {
                    cur = cur?.next
                    res = cur
                } else {
                    prev?.next = cur?.next
                    cur = cur?.next
                }
            } else {
                prev = cur
                cur = cur?.next
            }
        }

        return res
    }
}
