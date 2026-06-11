class Solution {
    func recoverOrder(_ order: [Int], _ friends: [Int]) -> [Int] {
        var hashSet = Set(friends)
        var res = [Int]()

        for i in order {
            if hashSet.contains(i) {
                res.append(i)
            }
        }

        return res
    }
}
