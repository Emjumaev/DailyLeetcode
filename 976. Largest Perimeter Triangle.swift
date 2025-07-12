class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {

        var nums2 = nums.sorted()
        var length = [Int]()
        
        for i in 0...nums2.count - 3{
            if nums2[i] + nums2[i + 1] > nums2[i + 2] && nums2[i + 2] + nums2[i + 1] > nums2[i] && nums2[i + 2] + nums2[i] > nums2[i + 1]{
            length.append(nums2[i] + nums2[i + 1] + nums2[i + 2])
        }else{
            length.append(0)
        }
    }
        return(length.max()!)
    }
}
