class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

        var res = [Int]()

        for num1 in nums1 {
            var i = 0
            while(num1 != nums2[i]) {
                i += 1
            }

            var rightMax = num1
            i += 1
            while(i < nums2.count) {
                if nums2[i] > rightMax {
                    rightMax = nums2[i]
                    break
                }
                i += 1
            }
            res.append(rightMax == num1 ? -1 : rightMax)
        }

        return res
    }
}
