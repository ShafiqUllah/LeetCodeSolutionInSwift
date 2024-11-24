class Solution {
     func maxMatrixSum(_ matrix: [[Int]]) -> Int {
        
        let row = matrix.count
        let column = matrix[0].count
        var ans  = 0
        var negNumCount = 0
        var smallestAbsValue = Int.max
        
        for i in 0..<row{
            for j in 0..<column{
                if matrix[i][j] < 0 {
                    negNumCount += 1
                }
                
                ans += abs(matrix[i][j])
                
                if abs(matrix[i][j]) < smallestAbsValue{
                    smallestAbsValue = abs(matrix[i][j])
                }
            }
        }
        
        if negNumCount % 2 == 0{
            return ans
        }else{
            ans -= 2 * smallestAbsValue
            return ans
        }
    }
}
