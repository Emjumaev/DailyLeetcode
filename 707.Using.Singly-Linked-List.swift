/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Node {
    var val: Int
    var next: Node?
    
    init(val: Int, next: Node? = nil) {
        self.val = val
        self.next = next
    }
}

class MyLinkedList {
    
    var head: Node?

    init() {
        
    }
    
    // O(n)
    func get(_ index: Int) -> Int {
        // O(n)
        if head == nil {
            return -1
        } else {
            var cur = head
            var i = 0
            
            while(cur != nil) {
                if index == i {
                    return cur!.val
                }
                cur = cur!.next
                i += 1
            }
        }
        return -1
    }
    
    // O(1)
    func addAtHead(_ val: Int) {
        let newNode = Node(val: val)
        newNode.next = head
        head = newNode
    }
    
    // O(n)
    func addAtTail(_ val: Int) {
        var cur = head
        let newNode = Node(val: val)

        if head == nil {
            head = newNode
            return
        }
        
        while(cur?.next != nil) {
            cur = cur?.next
        }
        
        cur?.next = newNode
    }
    
    // O(n)
    func addAtIndex(_ index: Int, _ val: Int) {
        var prev: Node? = nil
        var cur = head
        var i = 0
        
        if head == nil && index == 0 {
            addAtHead(val)
            return
        }
        
        while(cur != nil) {
            if index == i {
                if prev == nil {
                    addAtHead(val)
                } else {
                    let newNode = Node(val: val)
                    prev!.next = newNode
                    newNode.next = cur
                }
            }
            i += 1
            prev = cur
            cur = cur!.next
        }
        if index == i {
            addAtTail(val)
        }
    }
    
    // O(n)
    func deleteAtIndex(_ index: Int) {
        var prev: Node?
        var cur = head
        var i = 0
        
        while(cur != nil) {
            if i == index {
                if prev == nil {
                    head = cur?.next
                } else {
                    prev?.next = cur?.next
                }
            }
            i += 1
            prev = cur
            cur = cur?.next
        }
    }
}
