class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var map1 = [Character: Int]()
        var map2 = [Character: Int]()

        for char in s {
            if map1[char] == nil {
                map1[char] = 1
            } else {
                map1[char] = map1[char]! + 1
            }
        }

        for char in t {
            if map2[char] == nil {
                map2[char] = 1
            } else {
                map2[char] = map2[char]! + 1
            }
        }

        return map1 == map2
    }
}
