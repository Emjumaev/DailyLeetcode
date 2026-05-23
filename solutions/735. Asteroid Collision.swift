class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        for asteroid in asteroids {
            if asteroid >= 0 {
                stack.append(asteroid)
            } else {
                var wasEqual = false
                while(!stack.isEmpty && stack.last! >= 0) {
                    let pop = stack.removeLast()
                    if pop + asteroid > 0 {
                        stack.append(pop)
                        break
                    } else if pop + asteroid == 0 {
                        wasEqual = true
                        break
                    }
                }
                if (stack.isEmpty || stack.last! < 0) && !wasEqual {
                    stack.append(asteroid)
                }
            }
        }

        return stack
    }
}
