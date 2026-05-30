class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        var hashSet = Set<Int>()

        var res = [Int]()

        for num in nums {
            if hashSet.contains(num) {
                res.append(num)
            } else {
                hashSet.insert(num)
            }
        }

        return res
    }
}
