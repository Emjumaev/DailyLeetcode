class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1 = Set<Int>()
        var set2 = Set<Int>()

        for i in nums1 {
            set1.insert(i)
        }

        for j in nums2 {
            set2.insert(j)
        }

        return Array(set1.intersection(set2))

    }
}
