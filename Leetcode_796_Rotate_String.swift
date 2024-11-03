class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        var sArr = Array(s)
        
        for i in 0..<s.count{
            let firstChar = sArr.removeFirst()
            sArr.append(firstChar)
            if goal == String(sArr){
                return true
            }
        }
        
        return false
    }
}

// Chatgpt
class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        // Check if lengths are the same, as a prerequisite for a valid rotation
        if s.count != goal.count {
            return false
        }
        
        // Concatenate `s` with itself and check if `goal` is a substring
        return (s + s).contains(goal)
    }
}

