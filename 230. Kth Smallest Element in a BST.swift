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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var count = k
        var res = 0

        func dfs(_ node: TreeNode?) {
            guard let node = node else { return }
            dfs(node.left)
            count -= 1
            if count == 0 {
                res = node.val
                return
            }
            dfs(node.right)
        }

        dfs(root)
        return res
    }
}
