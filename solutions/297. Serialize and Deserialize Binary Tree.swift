/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Codec {
    func serialize(_ root: TreeNode?) -> String {
        if root == nil { return "" }
        var res = [String]()

        var queue = [TreeNode?]()
        queue.append(root)
        res.append(String(root!.val))

        while(!queue.isEmpty) {
            for _ in 1...queue.count {
                let dequeueElement = queue.removeFirst()
                if dequeueElement?.left != nil {
                    queue.append(dequeueElement?.left)
                    res.append(String(dequeueElement!.left!.val))
                } else {
                    res.append("null")
                }

                if dequeueElement?.right != nil {
                    queue.append(dequeueElement?.right)
                    res.append(String(dequeueElement!.right!.val))
                } else {
                    res.append("null")
                }
            }
        }

        return res.joined(separator: ",")
    }

    func deserialize(_ data: String) -> TreeNode? {
        if data == "" { return nil }
        let arr = data.components(separatedBy: ",")
        let root = TreeNode(Int(arr[0])!)
        var queue = [root]
        var i = 1
        while !queue.isEmpty && i < arr.count {
            let node = queue.removeFirst()
            if arr[i] != "null" {
                let left = TreeNode(Int(arr[i])!)
                node.left = left
                queue.append(left)
            }
            i += 1
            if i < arr.count && arr[i] != "null" {
                let right = TreeNode(Int(arr[i])!)
                node.right = right
                queue.append(right)
            }
            i += 1
        }
        return root
    }
}
