class Solution_205 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var hash_s : [Character:Character] = [:]
        var hash_t : [Character: Character] = [:]
        
        let sArray = Array(s)
        let tArray = Array(t)
        
        for i in 0..<sArray.count{
            let sChar = sArray[i]
            let tChar = tArray[i]
            
            if let mappedChar = hash_s[sChar], mappedChar != tChar{
                return false
            }
            
            if let mappedChar = hash_t[tChar], mappedChar != sChar{
                return false
            }
            
            hash_s[sChar] = tChar
            hash_t[tChar] = sChar
        }
        return true
    }
}
