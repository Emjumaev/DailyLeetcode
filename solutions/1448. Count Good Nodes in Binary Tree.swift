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
    func goodNodes(_ root: TreeNode?) -> Int {

        var count = 0

        func dfs(_ root: TreeNode?, _ maxValue: Int) -> TreeNode? {

            if root == nil { return nil }

            if root!.val >= maxValue {
                count += 1
            }

            dfs(root?.left, max(root!.val, maxValue))
            dfs(root?.right, max(root!.val, maxValue))

            return root
        }

        dfs(root, Int.min)

        return count
    }
}
