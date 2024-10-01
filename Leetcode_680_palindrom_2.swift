class Solution_680 {
    func validPalindrome(_ s: String) -> Bool {
        let input = s.lowercased()
        let reverse_input = String(input.reversed())
        if input == reverse_input{
            return true
        }
        
        let chars = Array(s)
        
        func isValidPalindrome(_ left:Int, _ right:Int) -> Bool{
            var left = left
            var right = right
            
            while left < right {
                if chars[left] != chars[right]{
                    return false
                }
                
                left += 1
                right -= 1
            }
            
            return true
        }
        
        //Two pointer approach
        
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            if chars[left] != chars[right]{
                return isValidPalindrome(left + 1, right) || isValidPalindrome(left, right - 1)
            }
            
            left += 1
            right -= 1
        }
        
        
        return true
    }
}
