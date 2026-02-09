/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        if node == nil { return nil }

        var hashMap = [Node: Node]()

        var queue = [Node]()
        var visit = Set<Node>()

        queue.append(node!)
        visit.insert(node!)

        let firstNode = Node(node!.val)
        if hashMap[node!] == nil {
            hashMap[node!] = firstNode
        }

        while(!queue.isEmpty) {
            var size = queue.count
            for _ in 0..<size {
                let node = queue.removeFirst()
                
                for neighbour in node.neighbors {
                    if hashMap[neighbour!] == nil {
                        let neighbourCopy = Node(neighbour!.val)
                        hashMap[neighbour!] = neighbourCopy
                    }
                    hashMap[node]!.neighbors.append(hashMap[neighbour!])
                    
                    if !visit.contains(neighbour!) {
                        queue.append(neighbour!)
                        visit.insert(neighbour!)
                    }
                }
                
            }
        }

        return firstNode
    }
}
