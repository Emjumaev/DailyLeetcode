class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if ["+", "-", "*", "/"].contains(token)   {
                let a = stack.removeLast()
                let b = stack.removeLast()

                switch token {
                case "+":
                    stack.append(b + a)
                    break

                case "-":
                    stack.append(b - a)
                    break

                case "*":
                    stack.append(b * a)
                    break

                case "/":
                    stack.append(b / a)
                    break
                default: break
                }
            } else {
                let num = Int(token) ?? 0
                stack.append(num)
            }

        }

        return stack[0]
    }
}
