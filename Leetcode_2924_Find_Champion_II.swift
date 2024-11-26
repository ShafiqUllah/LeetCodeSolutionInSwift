class Solution {
    func findChampion(_ n: Int, _ edges: [[Int]]) -> Int {
        var ans = -1
        
        var indegrees =  Array(repeating: 0, count: n)
        
        for edge in edges {
            indegrees[edge[1]] += 1
        }
        
        for (index,indegree) in indegrees.enumerated(){
            
            if indegree == 0{
                if ans != -1{
                    ans = -1
                    break
                }
                ans = index
            }
        }
        
        return ans
    }
}
