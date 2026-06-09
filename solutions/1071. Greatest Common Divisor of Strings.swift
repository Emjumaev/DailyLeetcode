class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        var arr1 = Array(str1)
        var arr2 = Array(str2)
        var res = ""

        var prefixStr = ""
        for char in arr2 {
            prefixStr += String(char)

            // check the second string for gcd
            let count = prefixStr.count
            var i = 0
            while(i + count - 1 < arr2.count) {
                let str = String(Array(arr2[i...(i + count - 1)]))
                if str != prefixStr {
                    break
                }
                i += count
            }

            if i != arr2.count {
                continue
            }

            var j = 0
            while(j + count - 1 < arr1.count) {
                let str = String(Array(arr1[j...(j + count - 1)]))
                if str != prefixStr {
                    break
                }
                j += count
            }

            if j != arr1.count {
                continue
            }

            res = prefixStr
        }

        return res
    }
}
