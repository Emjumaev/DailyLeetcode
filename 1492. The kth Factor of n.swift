class Solution {
    func kthFactor(_ n: Int, _ k: Int) -> Int {
        var nums = [Int]()
        for i in 1...n {
            if n % i == 0 {
                nums.append(i)
            }
        }
    if nums.count < k {
        return -1
    }
        return nums[k - 1]
    }
}
