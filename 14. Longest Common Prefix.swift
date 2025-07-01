class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs[0]
        var strs = strs.dropFirst()

        for str in strs {
            while(!str.hasPrefix(prefix)) {
                prefix = String(prefix.dropLast())

                if prefix == "" {
                    return ""
                }
            }
        }

        return prefix
    }
}
