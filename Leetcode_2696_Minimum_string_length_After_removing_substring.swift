class Solution_2696 {
    func minLength(_ s: String) -> Int {
        //print(removeABorCD(s))
        var loaclS = s
        var previous_length = loaclS.count
        while let newStr = removeABorCD(loaclS), previous_length != newStr.count{
            previous_length = newStr.count
            loaclS = newStr
        }
        
        func removeABorCD(_ s: String)->String?{
            guard s.count != 0 else{
                return s
            }
            for i in 0..<s.count - 1{
                let start = s.index(s.startIndex, offsetBy: i)
                let end = s.index(start, offsetBy: 2)
                
                let subStr = s[start..<end]
                print(String(subStr))
                if subStr == "AB" || subStr == "CD"{
                     return String(s[s.startIndex..<start]) + s[end..<s.endIndex]
                }
            }
            return s
        }
        
        
        return loaclS.count
        
    }
    
}


// ChatGPT
class Solution_2696 {
    func minLength(_ s: String) -> Int {
        
        var stack = [Character]()
        
        for c in s {
            if let last = stack.last {
                if (last == "A" && c == "B") || (last == "C" && c == "D"){
                    stack.removeLast()
                    continue
                    
                }
            }
            
            stack.append(c)
        }
        
        return stack.count
    }
    
}
