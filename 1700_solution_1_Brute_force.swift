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
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var students = students
        var sandwiches = sandwiches
        var result = students.count
        var isFound = true

        for sandwich in sandwiches {
            var n = 0
            if !isFound {
                return result
            }
            isFound = true
            while(n < students.count) {
                if sandwich == students[0] {
                    let studentToRemove = students.remove(at: 0)
                    result -= 1
                    isFound = true
                    break
                } else {
                    let studentToRemove = students.remove(at: 0)
                    students.append(studentToRemove)
                    isFound = false
                }
                n += 1
            }
        }
        return result
    }
}

// Time: O(n^3)
// Space: O(1)
