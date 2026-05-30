class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var subsets = [[Int]]()
        subsets.append([])
        
        for num in nums {
            for subset in subsets {
                var temp = subset
                temp.append(num)
                subsets.append(temp)
            }
        }
        
        var res = 0
        for subset in subsets {
            var xor = 0
            for s in subset {
                xor ^= s
            }
            res += xor
        }
        
        return res
    }
}
