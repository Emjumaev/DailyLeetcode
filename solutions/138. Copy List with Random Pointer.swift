/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *           self.random = nil
 *     }
 * }
 */

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {

        var hashMap = [Node?: Node?]()
        hashMap[nil] = nil

        var cur = head
        while(cur != nil) {
            hashMap[cur] = Node(cur!.val)
            cur = cur?.next
        }

        cur = head
        while(cur != nil) {
            if let newNode = hashMap[cur] {
                newNode?.next = hashMap[cur?.next] ?? nil
                newNode?.random = hashMap[cur?.random] ?? nil
            }
            cur = cur?.next
        }

        return hashMap[head] ?? nil
    }
}
