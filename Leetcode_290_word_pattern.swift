class Solution_290 {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        
        guard pattern.count == s.split(separator: " ").count else {
            return false
        }
        
        var setChar = Set<Character>()
        var setWord = Set<String>()
        
        for c in pattern{
            setChar.insert(c)
        }
        
        for s in s.split(separator: " "){
            setWord.insert(String(s))
        }
        
        guard setChar.count == setWord.count else {
            return false
        }
        
        var hashMap : [Character : String] = [:]
        var wordList = s.split(separator: " ")
        
        
        for (index,c) in pattern.enumerated(){
            if let t = hashMap[c], t != String(wordList[index]){
                return false
            }else{
                hashMap[c] = String(wordList[index])
            }
        }
        
        return true
    }
}


// ChatGPT solution

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let words = s.split(separator: " ")
    
    // If pattern length and word count don't match, return false
    if pattern.count != words.count {
        return false
    }
    
    var charToWord = [Character: String]()
    var wordToChar = [String: Character]()
    
    for (char, word) in zip(pattern, words) {
        let wordStr = String(word)
        
        // Check if the current character is already mapped to a different word
        if let mappedWord = charToWord[char], mappedWord != wordStr {
            return false
        }
        
        // Check if the current word is already mapped to a different character
        if let mappedChar = wordToChar[wordStr], mappedChar != char {
            return false
        }
        
        // Create mappings if they don't exist
        charToWord[char] = wordStr
        wordToChar[wordStr] = char
    }
    
    return true
}

