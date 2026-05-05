class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var num = n, sum = 0, mult = 1
        while(num > 0){
            sum += (num % 10)
            mult *= (num % 10)
            num /= 10
        }
    return mult - sum
    }
}
