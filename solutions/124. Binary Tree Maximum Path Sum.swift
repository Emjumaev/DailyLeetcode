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
    func maxPathSum(_ root: TreeNode?) -> Int {
        var res = -1001

        func dfs(_ root: TreeNode?) -> Int {
            if root == nil { return -1001 }

            if root?.left == nil && root?.right == nil {
                res = max(res, root!.val)
                return root!.val
            }

            let left = dfs(root?.left)
            let right = dfs(root?.right)

            res = max(res, left, right, root!.val, left + root!.val, right + root!.val, left + right + root!.val)

            return root!.val + max(left, right)
        }

        dfs(root)

        return res
    }
}
