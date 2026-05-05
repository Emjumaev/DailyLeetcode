//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//



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
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var cur: ListNode?
        cur = head
        var prev: ListNode? = nil

        while(cur != nil) {
            let temp = cur!.next
            cur!.next = prev
            prev = cur
            cur = temp
        }

        return prev
    }
}

// Time: O(n)
// Space: O(1)
