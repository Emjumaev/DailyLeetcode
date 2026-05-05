class MyStack {

    var queue1: [Int] = []
    var queue2: [Int] = []

    init() {
        queue1 = []
        queue2 = []
    }
    
    func push(_ x: Int) {
        queue1.append(x)
    }
    
    // Time: O(n)
    func pop() -> Int {
        while(queue1.count != 1) {
            let removed = queue1.removeFirst()
            queue2.append(removed)
        }
        let poped = queue1.removeFirst()
        
        (queue1, queue2) = (queue2, queue1)

        return poped
    }
    
    func top() -> Int {
        return queue1[queue1.count - 1]
    }
    
    func empty() -> Bool {
        return queue1.isEmpty
    }
}

// Space: O(n)
