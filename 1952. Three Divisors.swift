class Solution {
    func isThree(_ n: Int) -> Bool {
        var k = 0, i = 1
        while(i <= n){
            if n % i == 0{
                k += 1
            }
            i += 1
        }
        return k == 3
    }
}
