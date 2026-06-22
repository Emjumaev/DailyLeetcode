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
    func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {

        if root == nil { return nil }

        if root?.left != nil {
            root?.left = removeLeafNodes(root?.left, target)
        }
        if  root?.right != nil {
            root?.right = removeLeafNodes(root?.right, target)
        }

        // check for leaf node
        if root?.left == nil && root?.right == nil && root!.val == target {
            return nil
        }

        return root
    }
}
