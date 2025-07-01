class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Int]()

        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char] = dict[char]! + 1
            }
        }

        for (index, char) in s.enumerated() {
            if dict[char] == 1 {
                return index
            }
        }

        return -1
    }
}

// Time: O(n)
// Space: O(n)

