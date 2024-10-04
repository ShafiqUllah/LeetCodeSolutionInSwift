class Solution_14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count  ==  0 {
            return ""
        }
        
        var result = strs[0]
        
        for i in 1..<strs.count{
            while !strs[i].hasPrefix(result){
                result.removeLast()
                
                if result.count == 0{
                    return ""
                }
            }
        }
        
        return result
    }
}


//Chatgpt ans
func longestCommonPrefix(_ strs: [String]) -> String {
    guard let firstStr = strs.first else {
        return ""
    }

    var prefix = firstStr

    for str in strs {
        while !str.hasPrefix(prefix) {
            prefix = String(prefix.dropLast())
            if prefix.isEmpty {
                return ""
            }
        }
    }

    return prefix
}

