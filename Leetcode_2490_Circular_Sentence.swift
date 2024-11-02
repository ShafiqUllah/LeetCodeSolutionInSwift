class Solution {
    func isCircularSentence(_ sentence: String) -> Bool {
        var words = sentence.components(separatedBy: " ")
        
        var setFirst = [Character]()
        var setLast = [Character]()
        
        
        
        for word in words {
            var w = word
            if w.count > 1{
                let f = w.removeFirst()
                let l = w.removeLast()
                setFirst.append(f)
                setLast.append(l)
            }else{
                let t = w.removeFirst()
                setFirst.append(t)
                setLast.append(t)
                
            }

        }
        if setFirst.count > 0 && setLast.count > 0{
            if setFirst.removeFirst() != setLast.removeLast(){
                return false
            }
        }
        
        
        
        for i in 0..<setFirst.count{
            if setFirst.removeFirst() != setLast.removeFirst(){
                return false
            }
        }
        
        return true
    }
}

//From chatgpt

class Solution1 {
    func isCircularSentence(_ sentence: String) -> Bool {
        // Split the sentence into words
        let words = sentence.split(separator: " ")
        
        // If there's only one word, check if first and last characters match
        if words.count == 1 {
            let word = String(words[0])
            return word.first == word.last
        }
        
        // Check each adjacent pair of words
        for i in 0..<words.count {
            let currentWord = String(words[i])
            let nextWord = String(words[(i + 1) % words.count])
            
            // Get last character of current word and first character of next word
            guard let lastChar = currentWord.last,
                  let nextFirstChar = nextWord.first else {
                return false
            }
            
            // If characters don't match, sentence is not circular
            if lastChar != nextFirstChar {
                return false
            }
        }
        
        return true
    }
}

// Test cases
let solution = Solution()

// Test case 1: "leetcode exercises sound" -> false
print(solution.isCircularSentence("leetcode exercises sound"))  // false

// Test case 2: "eetcode" -> true
print(solution.isCircularSentence("eetcode"))  // true

// Test case 3: "Leetcode is cool" -> false
print(solution.isCircularSentence("Leetcode is cool"))  // false
