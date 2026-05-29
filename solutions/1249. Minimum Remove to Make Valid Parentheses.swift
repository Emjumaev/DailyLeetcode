class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var arr = Array(s)
        var stack = [Pair]()

        for (i, char) in arr.enumerated() {
            if char == "(" {
                stack.append(Pair(char: char, index: i))
            } else if char == ")" {
                if stack.isEmpty {
                    stack.append(Pair(char: char, index: i))
                }
                
                let top = stack.last!
                if top.char == "(" {
                    stack.popLast()
                } else {
                    stack.append(Pair(char: char, index: i))
                }
            }
        }
        
        var indexes = [Int]()
        for item in stack {
            indexes.append(item.index)
        }
        
        var res = ""
        for (i, char) in arr.enumerated() {
            if !indexes.contains(i) {
                res += String(char)
            }
        }
        
        return res
    }

    struct Pair {
        let char: Character
        let index: Int

        init(char: Character, index: Int) {
            self.char = char
            self.index = index
        }
    }
}
