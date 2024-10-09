class Solution {
    func minAddToMakeValid(_ s: String) -> Int {
        
        var leftCcount = 0
        var rightCount = 0
        
        for c in s{
            if c == "("{
                leftCcount += 1
            }else if c == ")" && leftCcount > 0 {
                leftCcount -= 1
            }else{
                rightCount += 1
                
            }
            
            
        }
        
        return leftCcount + rightCount
    }
}
