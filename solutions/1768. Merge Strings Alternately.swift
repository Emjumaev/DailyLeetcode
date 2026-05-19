class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let arr1 = Array(word1)
        let arr2 = Array(word2)
        var res = ""

        var i = 0
        while(i < min(arr1.count, arr2.count)) {
            res += String(arr1[i])
            res += String(arr2[i])
            i += 1
        }

        res += String(Array(arr1[i...]))
        res += String(Array(arr2[i...]))

        return res
    }
}
