//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//


class Solution {
    func isValid(_ s: String) -> Bool {
        var dict: [String: String] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]

        var stack = [String]()

        for i in s {
            let char = String(i)
            if let element = dict[char] {
                // closing parentheses
                let top = stack.last
                if top == element {
                    // drop the top
                    stack.removeLast()
                } else {
                    // add to the top
                    stack.append(char)
                }
            } else {
                // opening parantheses
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}
