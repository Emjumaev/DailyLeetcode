class Solution {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        if root == nil {
            return root
        }

        if key > root!.val {
            root!.right = deleteNode(root!.right, key)
        } else if key < root!.val {
            root!.left = deleteNode(root!.left, key)
        } else {
            if root!.left == nil {
                return root!.right
            } else if root!.right == nil {
                return root!.left
            } else {
                let minNode = findMin(root!.right)
                root!.val = minNode!.val
                root!.right = deleteNode(root!.right, minNode!.val)
            }
        }
        return root
    }

    func findMin(_ root: TreeNode?) -> TreeNode? {
        var cur = root

        if cur == nil {
            return nil
        }

        while(cur != nil && cur!.left != nil) {
            cur = cur!.left
        }

        return cur
    }
}
