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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.isEmpty || inorder.isEmpty {
            return nil
        }

        let root: TreeNode? = TreeNode(preorder[0])
        let mid = inorder.firstIndex(of: preorder[0]) ?? 0
        if mid == 0 {
            root!.left = nil
        } else {
            root!.left = buildTree(Array(preorder[1...mid]), Array(inorder[0...mid - 1]))
        }
        root!.right = buildTree(Array(preorder[(mid + 1)...]), Array(inorder[(mid + 1)...]))

        return root
    }
}
