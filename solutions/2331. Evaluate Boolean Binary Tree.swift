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
    func evaluateTree(_ root: TreeNode?) -> Bool {
        func dfs(_ root: TreeNode?) {

            if root == nil { return }

            if root!.val == 0 || root!.val == 1 { return }

            dfs(root?.left)
            dfs(root?.right)

            let rootVal = root!.val
            let leftVal = root!.left!.val == 1
            let rightVal = root!.right!.val == 1

            if root!.val == 2 {
                let val = leftVal || rightVal
                root!.val = val == true ? 1 : 0
            }

            if root!.val == 3 {
                let val = leftVal && rightVal
                root!.val = val == true ? 1 : 0
            }
        }

        dfs(root)

        return root!.val == 1
    }
}
