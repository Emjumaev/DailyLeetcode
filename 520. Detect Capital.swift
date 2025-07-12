class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let chars = Array(word)
        let n = chars.count
        
        func isUpper(_ c: Character) -> Bool {
            return c >= "A" && c <= "Z"
        }
        
        func isLower(_ c: Character) -> Bool {
            return c >= "a" && c <= "z"
        }
        
        if n == 0 { return true }
        
        if isUpper(chars[0]) {
            if n == 1 { return true }
            
            if isUpper(chars[1]) {
                for i in 1..<n {
                    if !isUpper(chars[i]) {
                        return false
                    }
                }
            } else {
                for i in 1..<n {
                    if !isLower(chars[i]) {
                        return false
                    }
                }
            }
        } else {
            for i in 0..<n {
                if !isLower(chars[i]) {
                    return false
                }
            }
        }
        
        return true
    }
}
