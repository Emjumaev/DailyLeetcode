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
    func reverseOddLevels(_ root: TreeNode?) -> TreeNode? {
        var queue = [TreeNode?]()
        var level = 0

        queue.append(root)

        while(!queue.isEmpty) {
            let count = queue.count

            for _ in 1...count {
                let pop = queue.removeFirst()

                if pop!.left != nil {
                    queue.append(pop!.left)
                }

                if pop!.right != nil {
                    queue.append(pop!.right)
                }
            }

            if level % 2 == 0 {
                var left = 0
                var right = queue.count - 1

                while(left < right) {
                    let temp = queue[left]!.val
                    queue[left]!.val = queue[right]!.val
                    queue[right]!.val = temp

                    left += 1
                    right -= 1
                }
            }

            level += 1
        }
        return root
    }
}
