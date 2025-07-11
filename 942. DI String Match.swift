class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var left = 0
        var right = s.count
        var res = [Int]()

        for char in s {
            if char == "I" {
                res.append(left)
                left += 1
            } else {
                res.append(right)
                right -= 1
            }
        }

        res.append(left)
        
        return res
    }
}
