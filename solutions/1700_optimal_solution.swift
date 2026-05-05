class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var hashmap: [Int: Int] = [0: 0, 1: 0]
        for student in students {
            if let count = hashmap[student] {
                hashmap[student] = count + 1
            }
        }

        for sandwich in sandwiches {
            if let count = hashmap[sandwich] {
                if count == 0 {
                    return hashmap[0]! + hashmap[1]!
                } else {
                    hashmap[sandwich] = count - 1
                }
            }
        }
        return 0
    }
}

// Time: O(n)
// Space: O(1) because we are creating hashmap that contains only 2 elements
