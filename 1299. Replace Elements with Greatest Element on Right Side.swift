class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var arr = arr
        var right = arr.count - 1
        var currentMax = -1

        while(right >= 0) {
            let temp = currentMax
            currentMax = max(currentMax, arr[right])
            arr[right] = temp
            right -= 1
        }

        return arr
    }
}


/*

Time: O(n)
Space: O(1)

*/
