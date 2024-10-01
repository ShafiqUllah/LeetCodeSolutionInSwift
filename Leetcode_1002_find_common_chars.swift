class Solution {
    func commonChars(_ words: [String]) -> [String] {
        
        
        
        //Create a dictionary hash table
        var charCount : [Character:Int] = [:]
        
        guard let first_word = words.first else {
            return []
        }
        
        for ch in first_word{
            charCount[ch, default: 0] += 1
        }
        
        for i in 1..<words.count{
            var currentCharCount : [Character: Int] = [:]
            for ch in words[i]{
                currentCharCount[ch, default: 0] += 1
            }
            
            // update the main charCount to minimum frequency
            for (ch, count) in charCount {
                if let currentValue = currentCharCount[ch]{
                    charCount[ch] = min(count, currentValue)
                }else{
                    charCount[ch] = 0
                }
            }
        }
        
        var result : [String] = []
        for (char, count) in charCount{
            for _ in 0..<count{
                result.append(String(char))
            }
        }
        return result
    }
}
