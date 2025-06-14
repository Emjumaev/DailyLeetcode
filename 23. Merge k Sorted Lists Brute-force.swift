class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return nums
        }
        
        let middle = (nums.count - 1) / 2
    
        let left = sortArray(Array(nums[0...middle]))
        let right = sortArray(Array(nums[(middle + 1)...(nums.count - 1)]))
    
        return merge(arr1: left, arr2: right)
    }

    func merge(arr1: [Int], arr2: [Int]) -> [Int] {
        var pointer1 = 0
        var pointer2 = 0
        var arr = [Int]()
        
        while(pointer1 < arr1.count && pointer2 < arr2.count) {
            if arr1[pointer1] < arr2[pointer2] {
                arr.append(arr1[pointer1])
                pointer1 += 1
            } else {
                arr.append(arr2[pointer2])
                pointer2 += 1
            }
        }
        
        arr += arr1[pointer1...]
        arr += arr2[pointer2...]
        
        return arr
    }
}

// Time: O(n * log(n))
// Space: O(n)
