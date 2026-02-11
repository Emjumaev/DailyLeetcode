// Time: O(n * m)
// Space: O(n * m)

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        var cache = [Key: Int]()

        var text1 = Array(text1)
        var text2 = Array(text2)

        func findLongest(_ i: Int, _ j: Int) -> Int {
            if i == text1.count { return 0 }
            if j == text2.count { return 0 }

            if cache[Key(i, j)] != nil { return cache[Key(i, j)]! }

            let char1 = text1[i]
            let char2 = text2[j]

            if char1 == char2 {
                cache[Key(i, j)] = 1 + findLongest(i + 1, j + 1)
            } else {
                cache[Key(i, j)] = max(findLongest(i + 1, j), findLongest(i, j + 1))
            }

            return cache[Key(i, j)]!
        }

        struct Key: Hashable {
            let i: Int
            let j: Int

            init(_ i: Int, _ j: Int) {
                self.i = i
                self.j = j
            }
        }

        return findLongest(0, 0)
    }
}

