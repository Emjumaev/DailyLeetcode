class Node {
    var val: Int = 0
    var next: Node? = nil
    var prev: Node? = nil

    init(_ val: Int) {
        self.val = val
    }
}

class MyCircularQueue {

    var head: Node? = nil
    var tail: Node? = nil
    var maxSize = 0
    var size = 0

    init(_ k: Int) {
        maxSize = k
    }

    func enQueue(_ value: Int) -> Bool {
        if isEmpty() {
            let newNode = Node(value)
            head = newNode
            tail = newNode
            size += 1
            return true
        }

        if isFull() {
            return false
        }

        let newNode = Node(value)
        tail?.next = newNode
        tail = newNode
        size += 1

        return true
    }

    func deQueue() -> Bool {
        if isEmpty() {
            return false
        }

        let temp = head?.next
        head?.next = nil
        head = temp
        size -= 1

        return true
    }

    func Front() -> Int {
        if isEmpty() {
            return -1
        }

        return head!.val
    }

    func Rear() -> Int {
        if isEmpty() {
            return -1
        }

        return tail!.val
    }

    func isEmpty() -> Bool {
        return size == 0
    }

    func isFull() -> Bool {
        return size == maxSize
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
