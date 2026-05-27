class CustomStack {

    var count = 0
    var maxSize = 0
    var stack = [Int]()

    init(_ maxSize: Int) {
        self.maxSize = maxSize
    }

    func push(_ x: Int) {
        if count >= maxSize {
            return
        }

        stack.append(x)
        count += 1
    }

    func pop() -> Int {
        if count == 0 {
            return -1
        }

        let res = stack.removeLast()
        count -= 1
        return res
    }

    func increment(_ k: Int, _ val: Int) {
        for i in 0...(k - 1) {
            if i >= count { return }
            stack[i] += val
        }
    }
}

/**
 * Your CustomStack object will be instantiated and called as such:
 * let obj = CustomStack(maxSize)
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * obj.increment(k, val)
 */
