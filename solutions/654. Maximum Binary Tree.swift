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
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {

        if nums.isEmpty { return nil }

        if nums.count == 1 { return TreeNode(nums[0]) }

        let max = nums.max()!
        let index = nums.firstIndex(of: max)!
        let node: TreeNode? = TreeNode(max)

        node?.left = constructMaximumBinaryTree(Array(nums[...(index - 1)]))
        node?.right = constructMaximumBinaryTree(Array(nums[(index + 1)...]))
        return node
    }
}
