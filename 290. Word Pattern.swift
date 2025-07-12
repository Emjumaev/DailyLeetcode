class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var words = s.split(separator: " ").map { String($0) }
        var dict1 = [Character: String]()
        var dict2 = [String: Character]()

        if pattern.count != words.count {
            return false
        }

        for (i, v) in pattern.enumerated() {
            if dict1[v] == nil {
                dict1[v] = words[i]
            } else {
                if dict1[v] != words[i] {
                    return false
                }
            }

            if dict2[words[i]] == nil {
                dict2[words[i]] = v
            } else {
                if dict2[words[i]] != v {
                    return false
                }
            }
        }

        return true
    }
}
