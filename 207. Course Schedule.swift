class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        
        var adjList = [Int: [Int]]()
        var visit = Set<Int>()
        
        
        for prerequisite in prerequisites {
            let from = prerequisite[0]
            let to = prerequisite[1]
            
            if adjList[from] == nil {
                adjList[from] = []
            }
            
            if adjList[to] == nil {
                adjList[to] = []
            }
            adjList[from]?.append(to)
        }
                
        func dfs(node: Int) -> Bool {
            if adjList[node] == nil { return true }
            let neighbours = adjList[node]!
            
            if neighbours.isEmpty {
                return true
            }
            
            if visit.contains(node) {
                return false
            }
            visit.insert(node)
            
            for neighbour in neighbours {
                if !dfs(node: neighbour) {
                    return false
                }
            }
            
            visit.remove(node)
            
            adjList[node] = []

            return true
        }
        
        for i in 0..<numCourses {
            if !dfs(node: i) {
                return false
            }
        }
        return true
    }
}
