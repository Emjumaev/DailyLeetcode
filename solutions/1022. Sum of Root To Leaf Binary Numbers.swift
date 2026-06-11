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
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var res = 0

        func dfs(_ root: TreeNode?, _ str: String) {
            if root == nil { return }
            var str = str

            if root?.left == nil && root?.right == nil {
                str += String(root!.val)
                if let decimal = Int(str, radix: 2) {
                    res += decimal
                }
                return
            }

            str += String(root!.val)

            dfs(root?.left, str)
            dfs(root?.right, str)
        }

        dfs(root, "")

        return res
    }
}
