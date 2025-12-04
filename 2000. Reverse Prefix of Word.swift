
class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var charArray = [Character]()

        for c in word {
            charArray.append(c)
        }

        var left = 0
        var right = 0
        for c in charArray {
            if c == ch {
                break
            }
            right += 1
        }
        
        if right == charArray.count {
            return word
        }

        while(left < right) {
            let temp = charArray[left]
            charArray[left] = charArray[right]
            charArray[right] = temp
            left += 1
            right -= 1
        }

        var res = ""
        for i in charArray {
            res += String(i)
        }

        return res
    }
}
