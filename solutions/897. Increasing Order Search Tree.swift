/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var inOrder = [Int]()

    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        traverse(root)

        var dump: TreeNode? = TreeNode(0)
        var cur = dump

        for val in inOrder {
            cur?.right = TreeNode(val)
            cur = cur?.right
        }

        return dump?.right
    }

    func traverse(_ root: TreeNode?) {
        if root == nil { return }

        traverse(root?.left)
        inOrder.append(root!.val)
        traverse(root?.right)
    }
}
