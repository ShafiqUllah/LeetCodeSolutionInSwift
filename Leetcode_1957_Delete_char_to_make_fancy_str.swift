class Solution {
    func makeFancyString(_ s: String) -> String {
        

        if s.count < 3 {
            return s
        }
        
        var ans = ""
        
        var last = ""
        var flag = false
        for c in s{

            if last == "\(c)" {
                //print("if ",c)
                if flag {
                    continue
                }
                flag = true
                ans += "\(c)"
              
            }else{
                //print("else ", c)
                flag = false
               
                last = "\(c)"
                ans += "\(c)"
            }


        }

        return ans
    }
}

//From chatgpt


class Solution {
    func makeFancyString(_ s: String) -> String {
        var ans = ""
        var lastChar: Character? = nil
        var count = 0
        
        for char in s {
            if char == lastChar {
                count += 1
            } else {
                lastChar = char
                count = 1
            }
            
            if count <= 2 {
                ans.append(char)
            }
        }
        
        return ans
    }
}

