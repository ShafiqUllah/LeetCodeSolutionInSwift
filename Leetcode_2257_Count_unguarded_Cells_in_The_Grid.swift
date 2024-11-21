class Solution {
    func countUnguarded(_ m: Int, _ n: Int, _ guards: [[Int]], _ walls: [[Int]]) -> Int {
        var grid  = Array(repeating: Array(repeating: 0, count: n), count: m)
        
//        print(grid)
        
        for g in guards {
            grid[g[0]][g[1]] = 1
        }
        
        for w in walls{
            grid[w[0]][w[1]] = 2
        }
        
       //print(grid)
        
        // 1 - g
        // 2 - w
        // 3 - see that block
        
        for i in 0..<m{
            for j in 0..<n{
                if grid[i][j] == 1{
                    // go left
                    var left = j - 1
                    while isValidGrid(i, left){
                        if grid[i][left] == 1 ||  grid[i][left] == 2{
                            break
                        }
                        grid[i][left] = 3
                        left -= 1
                    }
                    
                    // go right
                    var right = j + 1
                    while isValidGrid(i, right){
                        if grid[i][right] == 1 ||  grid[i][right] == 2{
                            break
                        }
                        grid[i][right] = 3
                        right += 1
                    }
                    
                    
                    // go up
                    var up = i - 1
                    while isValidGrid(up, j){
                        if grid[up][j] == 1 ||  grid[up][j] == 2{
                            break
                        }
                        grid[up][j] = 3
                        up -= 1
                    }
                    
                    //down
                    var down = i + 1
                    while isValidGrid(down, j){
                        if grid[down][j] == 1 ||  grid[down][j] == 2{
                            break
                        }
                        grid[down][j] = 3
                        down += 1
                    }
                }
                
            }
        }
        
        func isValidGrid(_ x: Int, _ y: Int)-> Bool{
            if x >= 0 && x < m && y >= 0 && y < n{
                return true
            }
            return false
        }
        
        print(grid)
        var ans = 0
        for i in 0..<m{
            for j in 0..<n{
                if grid[i][j] == 0{
                    ans += 1
                }
            }
        }
        
        return ans
    }
}
