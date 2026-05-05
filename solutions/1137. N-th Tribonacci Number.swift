class Solution {
    func tribonacci(_ n: Int) -> Int {
        var i = 3
        var array = [0, 1, 1]
        while(i <= n){
            let x  = array[i - 1] + array[i - 2] + array[i - 3]
            array += [x]
            i += 1
        }
        return array[n]
    }
}
