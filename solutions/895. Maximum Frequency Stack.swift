class FreqStack {

    var stack = [Int]()
    var dict = [Int: Int]()

    init() {
        stack = []
        dict = [:]
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if dict[val] == nil {
            dict[val] = 1
        } else {
            dict[val] = dict[val]! + 1
        }
    }
    
    func pop() -> Int {
        if stack.isEmpty { return -1 }

        var res = 0

        let maxFreq = dict.values.max()!
        var mostFreqItems = [Int]()
        for (index, val) in dict {
            if val == maxFreq {
                mostFreqItems.append(index)
            }
        }

        var temp = [Int]()
        while(!stack.isEmpty) {
            if mostFreqItems.contains(stack.last!) {
                res = stack.popLast()!
                if dict[res] != nil {
                    dict[res] = dict[res]! - 1

                    if dict[res] == 0 {
                        dict[res] = nil
                    }
                }
                break
            }
            temp.append(stack.popLast()!)
        }

        for item in temp.reversed() {
            stack.append(item)
        }

        return res
    }
}

/**
 * Your FreqStack object will be instantiated and called as such:
 * let obj = FreqStack()
 * obj.push(val)
 * let ret_2: Int = obj.pop()
 */
