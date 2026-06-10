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
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        // 1: [1], 2: [2, 3], 3: [4, 5, 6], 4: [7, 8]
        var hashMap = [Int: Int]()

        func dfs(_ root: TreeNode?, _ height: Int) {
            if root == nil { return }

            if root?.left == nil && root?.right == nil {
                if hashMap[height] == nil {
                    hashMap[height] = root!.val
                } else {
                    hashMap[height] = hashMap[height]! + root!.val
                }
            }

            dfs(root?.left, height + 1)
            dfs(root?.right, height + 1)
        }

        dfs(root, 1)

        let maxIndex = hashMap.keys.max()!
        return hashMap[maxIndex]!
    }
}
