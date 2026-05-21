class Solution {
    func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var left = 0
        var right = 0
        var res = [[Int]]()

        while(left < nums1.count && right < nums2.count) {
            let index1 = nums1[left][0]
            let index2 = nums2[right][0]

            if index1 < index2 {
                res.append(nums1[left])
                left += 1
            } else if index1 > index2 {
                res.append(nums2[right])
                right += 1
            } else {
                res.append([nums1[left][0], nums1[left][1] + nums2[right][1]])
                left += 1
                right += 1
            }
        }

        res.append(contentsOf: Array(nums1[left...]))
        res.append(contentsOf: Array(nums2[right...]))

        return res
    }
}
