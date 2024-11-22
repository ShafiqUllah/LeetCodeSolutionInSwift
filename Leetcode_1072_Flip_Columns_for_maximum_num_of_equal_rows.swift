class Solution_1072_brout_fource {
    func maxEqualRowsAfterFlips(_ matrix: [[Int]]) -> Int {
        let m = matrix.count
        let n = matrix[0].count
        
        
    
        func solve(_ data: [[Int]], _ idx: Int) -> Int{
            
            guard idx < n else{
                return 0
            }
            
            var data2 = data
            var withFlip = 0
            var withoutFlip = 0
            
            //without flip
            for i in 0..<m{
                //print(data[i])
                let sum = data[i].reduce(0, +)
                if sum == 0 || sum == n {
                    withoutFlip += 1
                }
            }
            
            // with flip
            for i in 0..<m{
                data2[i][idx] = data2[i][idx] == 0 ? 1 : 0
            }
            //print(data2)
            
            for i in 0..<m{
                //print(data2[i])
                let sum = data2[i].reduce(0, +)
                if sum == 0 || sum == n {
                    withFlip += 1
                }
            }
            
            let recRes = max( solve(data, idx + 1), solve(data2, idx + 1))
            
            return max(max(withFlip, withoutFlip),recRes)
        }
        
        return solve(matrix, 0)

    }
}

class Solution_1072 {
    func maxEqualRowsAfterFlips(_ matrix: [[Int]]) -> Int {
        var ans = 0
        for mat in matrix {
            let invertedMat = mat.map { $0 == 0 ? 1 : 0 }
            
            ans  = max(solve(mat, invertedMat),ans)
            
        }
        
        func solve(_ mat: [Int],_ invertedMat: [Int])->Int{
            var count  = 0
            for m in matrix{
                if m == mat || m == invertedMat{
                    count += 1
                }
            }
            
            return count
        }
        
        
        
    
        return ans
    }
}

Solution_1072().maxEqualRowsAfterFlips([[0,0,0],[0,0,1],[1,1,0]])
