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
    func averageOfSubtree(_ root: TreeNode?) -> Int {
        var sum = 0
        var res = 0

        func dfs(_ root: TreeNode?) -> (Int, Int) {
            if root == nil { return (0, 0) }

            if root?.left == nil && root?.right == nil {
                res += 1
                return (1, root!.val)
            }

            var count = 0
            var sum = 0
            let left = dfs(root?.left)
            let right = dfs(root?.right)
            count += left.0
            count += right.0

            sum += left.1
            sum += right.1

            sum += root!.val
            count += 1

            let average = sum / count

            if root!.val == average {
                res += 1
            }

            return (count, sum)
        }

        dfs(root)

        return res
    }
}
