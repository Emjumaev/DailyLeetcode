class Solution {
    func reverseString(_ s: inout [Character]) {
        var i = 0
        var j = s.count - 1

        while(i <= j) {
            let temp = s[i]
            s[i] = s[j]
            s[j] = temp
            i += 1
            j -= 1
        }
         
    }
}
