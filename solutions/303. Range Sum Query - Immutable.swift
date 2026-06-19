class NumArray {

    var prefixSum = [Int]()
    var nums = [Int]()

    init(_ nums: [Int]) {
        var sum = 0
        for num in nums {
            sum += num
            prefixSum.append(sum)
        }

        self.nums = nums
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSum[right] - prefixSum[left] + nums[left]
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */
