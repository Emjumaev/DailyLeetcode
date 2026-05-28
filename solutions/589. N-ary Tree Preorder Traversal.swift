/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {

    var preOrder = [Int]()

    func preorder(_ root: Node?) -> [Int] {
        traverse(root)

        return preOrder
    }

    func traverse(_ root: Node?) {
        if root == nil { return }

        preOrder.append(root!.val)
        for child in root!.children {
            traverse(child)
        }
    }
}
