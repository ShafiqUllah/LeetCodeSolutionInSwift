
// This solution is not excepted in leetcode fot time limit, but solve the basic problem. 


class Solution_438 {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var result = [Int]()
        
        for (indx,_) in s.enumerated(){
            if let start_index = s.index(s.startIndex, offsetBy: indx, limitedBy: s.endIndex){
                if let subStringIndex = s.index(start_index, offsetBy: p.count , limitedBy: s.endIndex){
                    let subString = s[start_index..<subStringIndex]
                    //print(subString)
                    if isValidAnargram(String(subString), p){
                        result.append(indx)
                    }
                }else{
                    // SubStringIndex out of bound
                    break
                }
            }else{
                //StartIndex out of bound
            }
            
            
        }
        
        func isValidAnargram(_ s:String , _ t:String)-> Bool{
            guard s.count == t.count  else{
                return false
            }
            
            return s.sorted() == t.sorted()
        }
        
        //print(result)
        
        return result
    }
}
