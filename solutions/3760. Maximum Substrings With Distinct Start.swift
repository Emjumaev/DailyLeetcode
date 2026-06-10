class Solution {
    func maxDistinct(_ s: String) -> Int {
        var hashSet = Set<Character>()

        for char in s {
            hashSet.insert(char)
        }

        return hashSet.count
    }
}
