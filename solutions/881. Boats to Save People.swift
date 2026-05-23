class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        let people = people.sorted()

        var left = 0
        var right = people.count - 1

        var res = 0

        while(left < right) {
            let sum = people[left] + people[right]

            if sum > limit {
                right -= 1
                res += 1
            } else {
                left += 1
                right -= 1
                res += 1
            }
        }

        return left == right ? res + 1 : res
    }
}
