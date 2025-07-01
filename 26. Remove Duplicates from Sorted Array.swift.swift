class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        var j = 1
        var max = nums.count - 1

        while(j <= max) {
            if !(nums[i] == nums[j]) {
                i += 1
                nums[i] = nums[j]
            }
            j += 1
        }
        return i + 1
    }
}


/*
[0,0,1,1,1,2,2,3,3,4]      ->     [0,1,2,3,4,_,_,_,_,_]
i  j

if arr[i] == arr[j] {
   j += 1
} else {
    i += 1
    arr[i] = arr[j]
}
j += 1


*/
