class Solution {

    var image = [[Int]]()
    var initialColor = 0

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        self.image = image
        self.initialColor = image[sr][sc]

        dfs(sr, sc, color)

        return self.image
    }

    func dfs(_ sr: Int, _ sc: Int, _ color: Int) {

        if sr < 0 || sr >= image.count || sc < 0 || sc >= image[0].count { return }

        if image[sr][sc] != initialColor { return }
        if  image[sr][sc] == color { return }

        image[sr][sc] = color

        dfs(sr + 1, sc, color)
        dfs(sr - 1, sc, color)
        dfs(sr, sc + 1, color)
        dfs(sr, sc - 1, color)
    }
}
