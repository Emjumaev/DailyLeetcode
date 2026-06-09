class Solution {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var res = left

        if left == right { return res }

        for num in (left + 1)...right {
            res = res & num
        }

        return res
    }
}
