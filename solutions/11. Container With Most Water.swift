class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        var res = 0
        
        while(l < r) {
            var area = (r - l) * min(height[r], height[l])
            res = max(res, area)

            if height[l] <= height[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return res
    }
}
