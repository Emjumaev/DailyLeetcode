class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var hashMap1 = [Character: Int]()
        var hashMap2 = [Character: Int]()

        for char in s {
            if hashMap1[char] == nil {
                hashMap1[char] = 1
            } else {
                hashMap1[char] = hashMap1[char]! + 1
            }
        }

        for char in t {
            if hashMap2[char] == nil {
                hashMap2[char] = 1
            } else {
                hashMap2[char] = hashMap2[char]! + 1
            }
        }

        for (key, val) in hashMap2 {
            if hashMap1[key] == nil || val != hashMap1[key]! {
                return key
            }
        }

        return Character("0")
    }
}
