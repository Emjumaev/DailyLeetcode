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
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        if preorder.isEmpty { return nil }

        if preorder.count == 1 { return TreeNode(preorder[0]) }

        let root: TreeNode? = TreeNode(preorder[0])

        var rightIndex = 0
        for (index, value) in preorder.enumerated() {
            if value > preorder[0] {
                rightIndex = index
                break
            }
        }

        let leftIndex = 1

        if rightIndex == 0 {
            root?.right = nil
        } else {
            root?.right = bstFromPreorder(Array(preorder[rightIndex...]))
        }

        if leftIndex == rightIndex {
            root?.left = nil
        } else {
            if rightIndex == 0 {
                root?.left = bstFromPreorder(Array(preorder[leftIndex...]))
            } else {
                root?.left = bstFromPreorder(Array(preorder[leftIndex...(rightIndex - 1)]))
            }
        }

        return root
    }
}
