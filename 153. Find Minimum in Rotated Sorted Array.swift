class Solution {
    func findMin(_ nums: [Int]) -> Int {
         var l = 0
        var r = nums.count - 1
        var result = nums[0]

        while(l <= r) {

            if nums[l] < nums[r] {
                result = min(result, nums[l])
                return result
            }

            let m = (l + r) / 2
            result = min(result, nums[m])

            if nums[m] >= nums[l] {
                l = m + 1
            } else {
                r = m - 1
            }
        }

        return result
    }
}

/*

1) [1,2,3,4,5]
left = 1
right = 5
if right > left {
    return left
}

2) [4,5,6,7,0,1,2]

left = 4
right = 2
mid = 7

if mid >= left {
    leftIndex = midIndex + 1
}

3) [5,6,0,1,2,3,4]

left = 5
right = 4
mid = 1

if mid < left {
    rightIndex = midIndex - 1
}


*/
