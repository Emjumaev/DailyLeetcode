class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var array = [Int]()
        for i in left...right {

            var test = true
            var number = i
            while(number > 0){
                let mod = number % 10
    
                if mod == 0 || i % mod != 0{
                    test = false
                }
                number /= 10
            }
            if test {
                array.append(i)
            }
        }
        return array
    }
}
