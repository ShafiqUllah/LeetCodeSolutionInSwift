class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
//        var s_index = -1
//        var t_index = -1
        var s_distanceFromZero = 0
        var t_distanceFromZero = 0

        guard s.count != 0 else {
            return true
        }
        
        while s_distanceFromZero < s.count , t_distanceFromZero < t.count {
            let s_temp = s.index(s.startIndex, offsetBy: s_distanceFromZero)
            let t_temp = t.index(t.startIndex, offsetBy: t_distanceFromZero)
            
            if s[s_temp] == t[t_temp]{
//                s_index = s.distance(from: s.startIndex, to: s_temp)
//                t_index = t.distance(from: t.startIndex, to: t_temp)
                if s_distanceFromZero == s.count - 1{
                    return true
                }
                s_distanceFromZero += 1
                t_distanceFromZero += 1
                
                
            }else{
                t_distanceFromZero += 1
            }
            
        }
        
        return false
        
        
    }
}


//Chatgpt solution

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sIndex = s.startIndex
    var tIndex = t.startIndex
    
    // Iterate over t and check each character with s
    while tIndex != t.endIndex {
        if sIndex == s.endIndex {
            return true  // We found all characters in s
        }
        if s[sIndex] == t[tIndex] {
            sIndex = s.index(after: sIndex)  // Move to the next character in s
        }
        tIndex = t.index(after: tIndex)  // Always move to the next character in t
    }
    
    // If we've iterated through t and sIndex reached the end, it's a subsequence
    return sIndex == s.endIndex
}
