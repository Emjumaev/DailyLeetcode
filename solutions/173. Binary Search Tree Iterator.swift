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

class BSTIterator {

    var index = -1
    var inorder = [Int]()

    init(_ root: TreeNode?) {
        traverse(root)
    }

    private func traverse(_ root: TreeNode?) {
        if root == nil { return }

        traverse(root?.left)
        inorder.append(root!.val)
        traverse(root?.right)
    }

    func next() -> Int {
        if index == -1 {
            index = 0
            return inorder[0]
        }
        index += 1
        return inorder[index]
    }

    func hasNext() -> Bool {
        if index == -1 { return !inorder.isEmpty }

        if index >= inorder.count - 1 {
            return false
        }

        return true
    }
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * let obj = BSTIterator(root)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */
