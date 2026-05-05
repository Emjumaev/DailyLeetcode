
class BrowserHistory {

    var cur: Node?

    var index: Int = 0

    init(_ homepage: String) {
        cur = Node(val: homepage)
    }
    
    func visit(_ url: String) {
        let newNode = Node(val: url)
        cur!.next = newNode
        newNode.prev = cur
        cur = newNode
    }
    
    func back(_ steps: Int) -> String {
        var i = 0
        while(steps > i) {
            if cur!.prev == nil {
                break
            }
            cur = cur!.prev
            i += 1
        }
        return cur!.val
    }
    
    func forward(_ steps: Int) -> String {
        var i = 0
        while(steps > i) {
            if cur!.next == nil {
                break
            }
            cur = cur!.next
            i += 1
        }
        return cur!.val
    }
}

class Node {
    var val: String = ""
    var next: Node?
    var prev: Node?

    init(val: String) {
        self.val = val
        next = nil
        prev = nil
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */
