class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var mySet = Set<Int>()

        for i in nums {
            if mySet.contains(i) {
                return true
            } else {
                mySet.insert(i)
            }
        }
        
        return false
    }
}
