/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || p == nil || q == nil {
            return nil
        }

        if root!.val > p!.val && root!.val > q!.val {
            return lowestCommonAncestor(root!.left, p, q)
        } else if root!.val < p!.val && root!.val < q!.val {
            return lowestCommonAncestor(root!.right, p, q)
        } else {
            return root
        }
    }
}
