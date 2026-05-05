class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var dict = [Int: Int]()
        var res = -1
        
        for i in arr {
            if dict[i] == nil {
                dict[i] = 1
            } else {
                dict[i] = dict[i]! + 1
            }
        }

        for element in dict {
            if element.key == element.value {
                res = max(res, element.key)
            }
        }

        return res
    }
}
