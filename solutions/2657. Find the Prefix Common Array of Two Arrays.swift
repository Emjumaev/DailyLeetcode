class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var hashMap1 = [Int: Int]()
        var hashMap2 = [Int: Int]()
        var res = [Int]()

        var i = 0
        while(i < A.count) {
            if hashMap1[A[i]] == nil {
                hashMap1[A[i]] = 1
            } else {
                hashMap1[A[i]] = hashMap1[A[i]]! + 1
            }

            if hashMap2[B[i]] == nil {
                hashMap2[B[i]] = 1
            } else {
                hashMap2[B[i]] = hashMap2[B[i]]! + 1
            }

            var count = 0
            for (index, value) in hashMap1 {
                if let value2 = hashMap2[index] {
                    count += min(value2, value)
                }
            }
            res.append(count)

            i += 1
        }

        return res
    }
}
