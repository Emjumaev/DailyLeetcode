
// Time: O(n * m)
// Space: O(n * m)


class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {

        var cache = [Key: Int]()

        func dfs(_ i: Int, _ j: Int) -> Int {

            if i == m || j == n { return 0 }

            if i == m - 1 && j == n - 1 { return 1 }

            if cache[Key(i + 1, j)] == nil {
                cache[Key(i + 1, j)] = dfs(i + 1, j)
            }

            if cache[Key(i, j + 1)] == nil {
                cache[Key(i, j + 1)] = dfs(i, j + 1)
            }

            return cache[Key(i + 1, j)]! + cache[Key(i, j + 1)]!
        }

        return dfs(0, 0)
    }

    struct Key: Hashable {
        let i: Int
        let j: Int

        init(_ i: Int, _ j: Int) {
            self.i = i
            self.j = j
        }
    }
}

/*

class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {

        func dfs(_ i: Int, _ j: Int) -> Int {

            if i == m || j == n { return 0 }

            if i == m - 1 && j == n - 1 { return 1 }

            return dfs(i + 1, j) + dfs(i, j + 1)
        }

        return dfs(0, 0)
    }


}

*/


