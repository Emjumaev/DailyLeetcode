class Solution {
    func validStrings(_ n: Int) -> [String] {
        var res = [String]()
        var path = [String]()

        func backtrack() {

            if path.count == n {
                res.append(path.joined())
                return
            }

            path.append("1")
            backtrack()
            path.removeLast()

            if path.isEmpty || path.last! != "0" {
                path.append("0")
                backtrack()
                path.removeLast()
            }
        }

        backtrack()

        return res
    }
}
