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
    var sum = 0

    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {

        if root == nil {
            return false
        }
        sum += root!.val

        if root!.left == nil && root!.right == nil {
            if targetSum == sum {
                return true
            }
            sum -= root!.val
            return false
        }

        if hasPathSum(root!.left, targetSum) {
            return true
        }

        if hasPathSum(root!.right, targetSum) {
            return true
        }

        sum -= root!.val
        return false
    }
}
