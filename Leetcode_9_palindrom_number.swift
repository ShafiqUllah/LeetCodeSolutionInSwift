class Solution_09 {
    func isPalindrome(_ x: Int) -> Bool {
        let inp = String(x)
        
        //print(inp)
        
        return inp == String(inp.reversed())
    }
}
