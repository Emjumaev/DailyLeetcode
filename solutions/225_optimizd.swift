class MyStack {

    var queue: [Int] = []

    init() {
        queue = []
    }
    
    func push(_ x: Int) {
        queue.append(x)
    }
    
    func pop() -> Int {
        var count = queue.count - 1
        var dequeueElement = 0
        while(count >= 0) {
            dequeueElement = queue.removeFirst()
            if count != 0 {
                queue.append(dequeueElement)
            }
            count -= 1
        }
        return dequeueElement
    }
    
    func top() -> Int {
        return queue[queue.count - 1]
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
