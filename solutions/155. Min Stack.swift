//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//



class MinStack {
    var stack = [Int]()
    var minStack = [Int]()

    init() {
        stack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty {
            minStack.append(val)
        } else {
            let min = min(minStack.last!, val)
            minStack.append(min)
        }
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        stack.last ?? 0
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

// Time: O(1)
// Space: O(n)
