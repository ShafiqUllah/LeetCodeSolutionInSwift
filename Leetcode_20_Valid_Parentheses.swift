class Solution {
    func isValid(_ s: String) -> Bool {
        var stack : [Character] = []
        
        for c in s{
            if c == ")" || c == "}" || c == "]"{
                if stack.count != 0 {
                    let last = stack.removeLast()
                    var la = c
                    switch la{
                    case ")" :
                        la = "("
                    case "}" :
                        la = "{"
                    case "]" :
                        la = "["
                    default:
                        return false
                    }
                    
                    
                    if la != last{
                        return false
                    }
                }else{
                    return false
                }
            }else{
                //print(c)
                stack.append(c)
            }
        }
        
        return stack.count == 0
    }
}
