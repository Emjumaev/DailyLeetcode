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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var queue = [TreeNode?]()
        var result = [[Int]]()

        if root != nil {
            queue.append(root)
        }

        var level = 0
        while(!queue.isEmpty) {
            var levelResult = [Int]()
            for i in (0...queue.count - 1) {
                let pop = queue.removeFirst()
                levelResult.append(pop!.val)

                if pop!.left != nil {
                    queue.append(pop!.left)
                }

                if pop!.right != nil {
                    queue.append(pop!.right)
                }
            }
            result.append(levelResult)
            level += 1
        }
        return result
    }
}
