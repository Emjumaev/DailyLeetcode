class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var dict1 = [Character: Int]()
        var s2 = Array(s2)

        for char in s1 {
            if dict1[char] == nil {
                dict1[char] = 1
            } else {
                dict1[char] = dict1[char]! + 1
            }
        }

        var dict2 = [Character: Int]()
        var left = -1
        var count = s1.count

        for (right, char) in s2.enumerated() {
            if dict1[char] != nil {

                if left == -1 {
                    left = right
                }

                if dict2[char] == nil {
                    dict2[char] = 1
                } else {
                    dict2[char] = dict2[char]! + 1
                }

                if right - left >= count {
                    dict2[s2[left]] = dict2[s2[left]]! - 1
                    if dict2[s2[left]]! == 0 {
                        dict2[s2[left]] = nil
                    }
                    left += 1
                }

                if dict1 == dict2 {
                    return true
                }
            } else {
                dict2 = [:]
                left = -1
            }
        }

        return false
    }
}
