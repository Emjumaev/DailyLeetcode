class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        var sum = 0, i = 1
        
        while(i < num){
            if num % i == 0{
                sum += i
            }
          i += 1
        }

        return sum == num
    }
}
