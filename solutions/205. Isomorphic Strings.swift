class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var sArray = [Character]()
        var tArray = [Character]()
        var sDict = [Character: Character]()
        var tDict = [Character: Character]()


        if s.count != t.count {
            return false
        }

        for i in s {
            sArray.append(i)
        }

        for j in t {
            tArray.append(j)
        }
        
        var i = 0
        while(i < s.count) {
            let sChar = sArray[i]
            let tChar = tArray[i]

            if sDict[sChar] == nil {
                sDict[sChar] = tChar
            } else {
                let value = sDict[sChar]!
                if value != tChar {
                    return false
                }
            }

            if tDict[tChar] == nil {
                tDict[tChar] = sChar
            } else {
                let value = tDict[tChar]!
                if value != sChar {
                    return false
                }
            }
            
            i += 1
        }

        return true
    }
}
