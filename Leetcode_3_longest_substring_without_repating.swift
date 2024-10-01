class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let str = Array(s)
    var maxLength = 0
    var start = 0
    var charSet = Set<Character>()
    
    for char in str{
        while charSet.contains(char){
            charSet.remove(str[start])
            start += 1
        }
        
        
        charSet.insert(char)
        maxLength = max(maxLength, charSet.count)
    }
    
    return maxLength
    }
}
