class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set: Set<Int> = []

        for num in nums {
            if !(set.contains(num)) {
                set.insert(num)
            } else {
                return true
            }
        }
        return false
    }
}
