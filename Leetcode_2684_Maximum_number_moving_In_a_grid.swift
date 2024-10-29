class Solution {
    func maxMoves(_ grid: [[Int]]) -> Int {
        let row = grid.count
        let column = grid[0].count
        
//        print(row)
//        print(column)
        var matrix = Array(repeating: Array(repeating: -1, count: column), count: row)
        
        
        func recursion(_ x:Int, _ y:Int, _ maxLength:Int)-> Int{
            
            if matrix[x][y] != -1{
                //print("found value")
                return matrix[x][y]
            }
            
            
            var up = 0
            var right = 0
            var down = 0
            // go up
            if isValid(x - 1, y + 1){
                if grid[x - 1][y + 1] > grid[x][y]{
                    up = 1 + recursion(x - 1, y + 1, maxLength)
                }
                
            }
            
            // go left
            if isValid(x , y + 1){
                if grid[x][y + 1] > grid[x][y]{
                    right = 1 + recursion(x, y + 1, maxLength)
                }
            }
            
            // go down
            if isValid(x + 1, y + 1){
                if grid[x + 1][y + 1] > grid[x][y]{
                    down = 1 + recursion(x + 1, y + 1, maxLength)
                }
            }
            
            matrix[x][y] = max(up, right, down)
            return matrix[x][y]
        }
        
        
        func isValid(_ x: Int, _ y:Int)-> Bool{
            if x >= 0, x < row, y >= 0, y < column{
                return true
            }
            return false
        }
        
        
        var ans  = 0
        for i in 0..<row{
            ans = max(recursion(i, 0, 0), ans)
        }
        
        //print(matrix)
        return ans
    }
}
