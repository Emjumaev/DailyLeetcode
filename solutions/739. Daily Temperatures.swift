class Solution {

    struct Temperature {
        var value: Int = 0
        var index: Int = 0

        init(_ val: Int, _ i: Int) {
            value = val
            index = i
        }
    }

    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Temperature]()
        var res = [Int]()

        for temp in temperatures {
            res.append(0)
        }

        for (index, temp) in temperatures.enumerated() {
            while(!stack.isEmpty && stack[stack.count - 1].value < temp) {
                let lastElement = stack.removeLast()
                res[lastElement.index] = index - lastElement.index
            }
            stack.append(Temperature(temp, index))
        }

        return res
    }
}
