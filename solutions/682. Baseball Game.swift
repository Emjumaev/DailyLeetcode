//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//


class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()

        for i in 0...operations.count - 1 {
            let operation = operations[i]
            if operation == "C" {
                stack.removeLast()
            } else if operation == "D" {
                stack.append(2 * stack[stack.count - 1])
            } else if operation == "+" {
                stack.append(stack[stack.count - 1] + stack[stack.count - 2])
            } else {
                stack.append(Int(operation) ?? 0)
            }
        }
 
        return stack.reduce(0, +)
    }
}

// Time: O(n)
// Space: O(n)
