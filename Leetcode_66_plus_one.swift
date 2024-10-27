class Solution_66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var a : [Int] = []
        var carryOn = false
        var calDone = false
        for i in digits.reversed(){
            if i == 9 , !calDone{
                carryOn = true
                a.append(0)
            }else{
                
                a.append(!calDone ? i + 1 : i)
                calDone = true
                carryOn = false
            }
        }
        if carryOn , !calDone{
            a.append(1)
        }
        
        return a.reversed()
    }
}

print(Solution_66().plusOne([9,2,9]))

class Solution_1277 {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var m = 0
        var n = 0
        if !matrix.isEmpty{
            m = matrix[0].count
            n = matrix.count
        }
        
        //print(m)
        //print(n)
        
        var ans = 0
        
        for i in 0..<n{
            var dynamic = 1
            for j in 0..<m{
                //print("i = \(i) j =\(j)")
                if matrix[i][j] == 1{
                    ans += 1 // size 1*1 matrix
                    
                    while isValidMatrix(i + dynamic, j + dynamic){
                        //print("dymanic \(dynamic)")
                        if isAllOneInMatrix(i, j, dynamic){
                            //print("found new")
                            ans += 1
                        }
                        dynamic += 1
                    }
                    
                }
                dynamic = 1
            }
        }
        
        func isAllOneInMatrix(_ m:Int, _ n : Int, _ depth:Int)-> Bool{
            //var noNeedAnyMore = false
            for i in m...m + depth{
                for j in n...n + depth{
                    //print("new i = \(i) j =\(j)")
                    if matrix[i][j] != 1{
                       // print("Opps!!")
                        return false
                    }
                }
            }
            
            return true
        }
        
        func isValidMatrix(_ i:Int, _ j : Int)->Bool{
           
            if i < n , j < m{
                //print("valid check, yes \(i),\(j)")
                return true
            }
            return false
        }
        
        return ans
    }
}
