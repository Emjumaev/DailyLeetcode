class Solution {
    func reverseByType(_ s: String) -> String {
        var arr = Array(s)

        var left = 0
        var right = arr.count - 1

        while(left < right) {
            let asciiLeft = arr[left].asciiValue!
            let asciiRight = arr[right].asciiValue!

            if !(asciiLeft >= 97 && asciiLeft <= 122) {
                left += 1
                continue
            }

            if !(asciiRight >= 97 && asciiRight <= 122) {
                right -= 1
                continue
            }

            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp

            left += 1
            right -= 1
        }

        left = 0
        right = arr.count - 1

        while(left < right) {
            let asciiLeft = arr[left].asciiValue!
            let asciiRight = arr[right].asciiValue!

            if (asciiLeft >= 97 && asciiLeft <= 122) {
                left += 1
                continue
            }

            if (asciiRight >= 97 && asciiRight <= 122) {
                right -= 1
                continue
            }

            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp

            left += 1
            right -= 1
        }

        return String(arr)
    }
}
