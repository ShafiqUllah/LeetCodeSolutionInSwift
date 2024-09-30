class Solution_125 {
    func isPalindrome(_ s: String) -> Bool {
        let small_s = s.lowercased()
        
        var inp = ""
        for c in small_s{
            if c >= "a" && c <= "z"{
                inp.append(c)
            }
            
            if c >= "0" && c <= "9"{
                inp.append(c)
            }
        }
        
        print(inp)
        
        return inp == String(inp.reversed())
        
    }
}
