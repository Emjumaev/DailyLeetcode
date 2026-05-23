class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var i = 0
        var result = Set<[Int]>()

        while(i < nums.count) {
            var j = i + 1
            while(j < nums.count - 2) {
                let sum = target - nums[i] - nums[j]
                let arr = Array(nums[(j + 1)...])
                var hashMap = [Int: Int]()


                var k = 0
                while(k < arr.count) {
                    if hashMap[sum - arr[k]] == nil {
                        hashMap[arr[k]] = arr[k]
                    } else {
                        result.insert([nums[i], nums[j], hashMap[sum - arr[k]]!, arr[k]].sorted())
                    }
                    k += 1
                }

                j += 1
            }
            i += 1
        }

        return Array(result)
    }
}
