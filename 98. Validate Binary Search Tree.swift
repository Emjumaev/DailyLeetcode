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
    func isValidBST(_ root: TreeNode?) -> Bool {
        validate(root, Int.min, Int.max)
    }

    private func validate(_ root: TreeNode?, _ left: Int, _ right: Int) -> Bool {
        if root == nil {
            return true
        }

        if !(root!.val > left && root!.val < right) {
            return false
        }

        return validate(root!.left, left, root!.val) && validate(root!.right, root!.val, right)
    }
}
