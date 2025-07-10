class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var hashSet = Set<Character>()
        var res = 0

        var sArray = [Character]()
        for i in s {
            sArray.append(i)
        }

        var i = 0
        var j = 0
        
        while(j < sArray.count) {
            let cur = sArray[j]
            while(hashSet.contains(cur)) {
                let left = sArray[i]
                hashSet.remove(left)
                i += 1
            }
            hashSet.insert(cur)
            res = max(res, j - i + 1)
            j += 1
        }
        
        return res
    }
}
