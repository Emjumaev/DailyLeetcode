class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var image = image
        var i = 0
        var j = 0

        while(i < image.count) {
            var left = 0
            var right = image[0].count - 1

            while(left <= right) {
                if left == right {
                    image[i][left] = reverse(image[i][left])
                    break
                }

                let temp = image[i][left]
                image[i][left] = reverse(image[i][right])
                image[i][right] = reverse(temp)

                left += 1
                right -= 1
            }
            i += 1
        }

        return image
    }

    func reverse(_ num: Int) -> Int {
        if num == 0 {
            return 1
        }
        return 0
    }
}
