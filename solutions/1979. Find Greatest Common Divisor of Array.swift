class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        var minNum = nums[0]
        var maxNum = nums[0]
        
        // Find min and max manually
        for num in nums {
            if num < minNum {
                minNum = num
            }
            if num > maxNum {
                maxNum = num
            }
        }
        
        return gcd(minNum, maxNum)
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
